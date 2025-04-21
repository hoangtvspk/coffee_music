import 'package:buitify_coffee/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:buitify_coffee/features/home/domain/usecases/get_several_track.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_banner.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/walking_animation.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:buitify_coffee/features/auth/presentation/bloc/auth_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/utils/ui_utils.dart';
import '../bloc/home_bloc.dart';
import '../widgets/album_list.dart';
import '../widgets/playlist_list.dart';
import '../widgets/sidebar.dart';
import '../../data/datasources/home_remote_data_source.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../domain/usecases/get_new_releases.dart';
import '../../domain/usecases/get_user_playlists.dart';

// - hot_hits.jpg
// - sad.jpg
// - daily.jpg
// - voice.jpg
// - hero.jpg
// - hiphop.jpg
// - rap.jpg
// - playlist_cover.jpg

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String token = '';
  late final HomeBloc _homeBloc;
  final _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    setToken();
    context.read<AuthBloc>().add(const AuthEvent.getUserInfo());

    // Initialize HomeBloc
    final remoteDataSource = HomeRemoteDataSourceImpl();
    final repository = HomeRepositoryImpl(remoteDataSource);
    _homeBloc = HomeBloc(
      getNewReleases: GetNewReleases(repository),
      getUserPlaylists: GetUserPlaylists(repository),
      getSeveralTrack: GetSeveralTrack(repository),
    )..add(const HomeEvent.started());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  void setToken() async {
    final storageToken = await SecureStorage().readAccessToken();
    setState(() {
      token = storageToken ?? 'No token';
    });
  }

  Future<void> _showLogoutConfirmation() async {
    await UiUtils.showLogoutConfirmation(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              initial: () => context.go('/'),
              failure: (message) {},
              success: (user) async {
                // 1. Get new releases first
                _homeBloc.add(const HomeEvent.getNewReleases(
                  offset: 0,
                  limit: 20,
                ));

                // 2. Then get user playlists
                await Future.delayed(const Duration(milliseconds: 200));
                _homeBloc.add(HomeEvent.getUserPlaylists(
                  offset: 0,
                  limit: 20,
                  userId: user.id,
                ));

                // 3. Finally get tracks
                await Future.delayed(const Duration(milliseconds: 100));
                _homeBloc.add(const HomeEvent.getTracks(
                  ids:
                      '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B',
                ));
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColor.grayLight,
        drawer: const Sidebar(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.5, 1.0],
              colors: [
                Colors.black.withValues(alpha: 0.2),
                Colors.black.withValues(alpha: 0.3),
                Colors.black.withValues(alpha: 0.9),
              ],
            ),
          ),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  floating: true,
                  leadingWidth: 30,
                  centerTitle: false,
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 16,
                    children: [
                      Image.asset(
                        'assets/images/buitify_text.png',
                        height: 30,
                      ),
                      const Expanded(
                        child: WalkingAnimation(
                          characterWidth: 40,
                          characterHeight: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: HomeBanner(),
                    ),
                    BlocProvider(
                      create: (context) => _homeBloc,
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox.shrink(),
                            loading: () => const HomeSkeleton(
                              key: ValueKey('loading'),
                            ),
                            homeError: (message) => Center(
                              key: ValueKey('error'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    message,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<HomeBloc>()
                                          .add(const HomeEvent.started());
                                    },
                                    child: const Text('Retry'),
                                  ),
                                ],
                              ),
                            ),
                            loaded: (newReleases, userPlaylists, tracks) {
                              return Column(
                                key: const ValueKey('loaded'),
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // ElevatedButton(
                                  //   onPressed: () {
                                  //     SecureStorage().writeAccessToken(
                                  //         'BQC-KIi3MGk6zpLn9G7jdlZ04AcrSYaBYnQAYf1dLvUf30dJ4HwFT25guTCcXV7nOpyzo4KLTtRObDaP7CW_peus5C1jl_KSEpPMA0VVPwos0AcAM3iBVghyodCts6FgRugC4nrcOQwCsXQefbVtpvEeqZTPMDysjRmYea4HLJZy1PN62L0uVWBspyvwCxB8LTPKZzVm2kcYAmlK1MBj3X8vxY1O_3Z48ozoPYXGneXik4lhZc8zj-F6CRE8Mg');
                                  //     SecureStorage().writeRefreshToken(
                                  //         'AQBXjNlmRvKby0KQULvbwiRcu5Pv7Ctc0C2mt5IlAjPt39sbn59Iipdca44URrrvnYxRfAHTrA6mzKGeRr55vrOs0qH2poHdDjeDFszu_os1ocUVIIHG_6lNCNyTClz3UEg');

                                  //     // AuthRemoteDataSourceImpl()
                                  //     //     .refreshToken();
                                  //   },
                                  //   child: const Text('Retry'),
                                  // ),
                                  if (newReleases.isNotEmpty) ...[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        'New Releases',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    AlbumList(albums: newReleases),
                                    const SizedBox(height: 24),
                                  ],
                                  if (userPlaylists.isNotEmpty) ...[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        'Your Playlists',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    PlaylistList(playlists: userPlaylists),
                                    const SizedBox(height: 24),
                                  ],
                                  if (tracks.albums.isNotEmpty) ...[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        'Several Tracks',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    AlbumList(albums: tracks.albums),
                                    const SizedBox(height: 24),
                                  ],
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
