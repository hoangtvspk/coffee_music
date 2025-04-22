import 'package:buitify_coffee/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:buitify_coffee/features/home/domain/usecases/get_several_track.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_banner.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/playlist_list.dart';
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
import '../widgets/album_list.dart';
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
                _homeBloc.start();
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
                          return Column(
                            spacing: 24,
                            children: [
                              // New Releases Section
                              state.statusLoadNewReleases.maybeWhen(
                                idle: () => const HomeSkeleton(
                                  title: 'New Releases',
                                  key: ValueKey('idle_new_releases'),
                                ),
                                loading: () => const HomeSkeleton(
                                  title: 'New Releases',
                                  key: ValueKey('loading_new_releases'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.newReleases.isNotEmpty
                                    ? AlbumList(
                                        albums: state.newReleases,
                                        title: 'New Releases',
                                        onAlbumSelected: (albumId) {
                                          context.push('/album/$albumId');
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Playlists Section
                              state.statusLoadPlaylists.maybeWhen(
                                idle: () => const HomeSkeleton(
                                  title: 'User Playlists',
                                  key: ValueKey('idle_playlists'),
                                ),
                                loading: () => const HomeSkeleton(
                                  title: 'User Playlists',
                                  key: ValueKey('loading_playlists'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.userPlaylists.isNotEmpty
                                    ? PlaylistList(
                                        playlists: state.userPlaylists,
                                        title: 'User Playlists',
                                        onPlaylistSelected: (playlistId) {
                                          context.push('/album/$playlistId');
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Tracks Section
                              state.statusLoadTracks.maybeWhen(
                                idle: () => const HomeSkeleton(
                                  title: 'Several Tracks',
                                  key: ValueKey('idle_several_tracks'),
                                ),
                                loading: () => const HomeSkeleton(
                                  title: 'Several Tracks',
                                  key: ValueKey('loading_several_tracks'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.tracks.albums.isNotEmpty
                                    ? AlbumList(
                                        albums: state.tracks.albums,
                                        title: 'Several Tracks',
                                        onAlbumSelected: (albumId) {
                                          context.push('/album/$albumId');
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Note: Tracks section will be implemented later
                              // when we have the TrackList widget ready
                            ],
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
