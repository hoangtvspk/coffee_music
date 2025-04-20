import 'package:buitify_coffee/features/home/domain/usecases/get_several_track.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_banner.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/walking_animation.dart';
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
    return BlocProvider(
      create: (context) => _homeBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            initial: () => context.go('/'),
            success: (user) {
              _homeBloc.add(const HomeEvent.getNewReleases(
                offset: 0,
                limit: 20,
              ));
              _homeBloc.add(HomeEvent.getUserPlaylists(
                offset: 0,
                limit: 20,
                userId: user.id,
              ));

              _homeBloc.add(const HomeEvent.getTracks(
                ids:
                    '7ouMYWpwJ422jRcDASZB7P,4VqPOruhp5EdPBeR92t6lQ,2takcwOaAZWiXQijPHIx7B',
              ));
            },
            orElse: () {},
          );
        },
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
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primary,
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primary,
                      ),
                    ),
                    homeError: (message) => Center(
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
                      return CustomScrollView(
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
                              if (newReleases.isNotEmpty) ...[
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                                  padding: EdgeInsets.symmetric(horizontal: 16),
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
                            ]),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
