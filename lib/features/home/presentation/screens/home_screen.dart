import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:buitify_coffee/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:buitify_coffee/features/home/domain/usecases/get_artists_top_track.dart';
import 'package:buitify_coffee/features/home/domain/usecases/get_several_track.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_banner.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/home_skeleton.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/playlist_list.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/saved_tracks_list.dart';
import 'package:buitify_coffee/features/home/presentation/widgets/walking_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/app_color.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../data/datasources/home_remote_data_source.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../domain/usecases/get_new_releases.dart';
import '../../domain/usecases/get_saved_track.dart';
import '../../domain/usecases/get_user_playlists.dart';
import '../bloc/home_bloc.dart';
import '../widgets/album_list.dart';
import '../widgets/sidebar.dart';

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
  String artistId = '6TITnFVRcl0AcZ4syE7Toe';
  String trackId = '7ouMYWpwJ422jRcDASZB7P';
  List<String> trackIds = [
    '7ouMYWpwJ422jRcDASZB7P',
    '4VqPOruhp5EdPBeR92t6lQ',
    '2takcwOaAZWiXQijPHIx7B',
  ];

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
      getSavedTracks: GetSavedTrack(repository),
      getArtistTopTracks: GetArtistTopTrack(repository),
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
                _homeBloc.add(HomeEvent.getTracks(
                  ids: trackIds.join(','),
                ));

                // 4. Finally get saved tracks
                await Future.delayed(const Duration(milliseconds: 100));
                _homeBloc.add(HomeEvent.getSavedTracks(
                  trackId: trackId,
                ));

                // 5. Finally get artist top tracks
                await Future.delayed(const Duration(milliseconds: 100));
                _homeBloc.add(HomeEvent.getArtistTopTracks(
                  artistId: artistId,
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
                          print("saved tracks: ${state.savedTracks}");
                          return Column(
                            spacing: 24,
                            children: [
                              // New Releases Section
                              state.statusLoadNewReleases.maybeWhen(
                                idle: () => HomeSkeleton(
                                  title: context.l10n.newReleases,
                                  key: const ValueKey('idle_new_releases'),
                                ),
                                loading: () => HomeSkeleton(
                                  title: context.l10n.newReleases,
                                  key: const ValueKey('loading_new_releases'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.newReleases.isNotEmpty
                                    ? AlbumList(
                                        albums: state.newReleases,
                                        title: context.l10n.newReleases,
                                        onAlbumSelected: (albumId) {
                                          final album = state.newReleases
                                              .firstWhere(
                                                  (a) => a.id == albumId);
                                          context.push('/album/$albumId',
                                              extra: album);
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Playlists Section
                              state.statusLoadPlaylists.maybeWhen(
                                idle: () => HomeSkeleton(
                                  title: context.l10n.userPlaylists,
                                  key: const ValueKey('idle_playlists'),
                                ),
                                loading: () => HomeSkeleton(
                                  title: context.l10n.userPlaylists,
                                  key: const ValueKey('loading_playlists'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.userPlaylists.isNotEmpty
                                    ? PlaylistList(
                                        playlists: state.userPlaylists,
                                        title: context.l10n.userPlaylists,
                                        onPlaylistSelected: (playlistId) {
                                          final playlist = state.userPlaylists
                                              .firstWhere(
                                                  (p) => p.id == playlistId);
                                          context.push('/playlist/$playlistId',
                                              extra: playlist);
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Tracks Section
                              state.statusLoadTracks.maybeWhen(
                                idle: () => HomeSkeleton(
                                  title: context.l10n.severalTracks,
                                  key: const ValueKey('idle_several_tracks'),
                                ),
                                loading: () => HomeSkeleton(
                                  title: context.l10n.severalTracks,
                                  key: const ValueKey('loading_several_tracks'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.tracks.isNotEmpty
                                    ? AlbumList(
                                        albums: state.tracks
                                            .map((track) => track.album)
                                            .toList(),
                                        title: context.l10n.severalTracks,
                                        onAlbumSelected: (albumId) {
                                          final album = state.tracks
                                              .map((track) => track.album)
                                              .firstWhere(
                                                  (a) => a.id == albumId);
                                          context.push('/album/$albumId',
                                              extra: album);
                                        },
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Saved Tracks Section
                              state.statusLoadSavedTracks.maybeWhen(
                                idle: () => const HomeSkeleton(
                                  title: 'Saved Tracks',
                                  key: ValueKey('idle_saved_tracks'),
                                ),
                                loading: () => const HomeSkeleton(
                                  title: 'Saved Tracks',
                                  key: ValueKey('loading_saved_tracks'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.savedTracks.isNotEmpty
                                    ? SavedTracksList(
                                        tracks: state.savedTracks,
                                        title: 'Saved Tracks',
                                      )
                                    : const SizedBox.shrink(),
                              ),

                              // Artist Top Tracks Section
                              state.statusLoadArtistTopTracks.maybeWhen(
                                idle: () => const HomeSkeleton(
                                  title: 'Artist Top Tracks',
                                  key: ValueKey('idle_artist_top_tracks'),
                                ),
                                loading: () => const HomeSkeleton(
                                  title: 'Artist Top Tracks',
                                  key: ValueKey('loading_artist_top_tracks'),
                                ),
                                failure: (message) => const SizedBox.shrink(),
                                orElse: () => state.artistTopTracks.isNotEmpty
                                    ? SavedTracksList(
                                        tracks: state.artistTopTracks,
                                        title: state
                                            .artistTopTracks.first.artists
                                            .firstWhere((artist) =>
                                                artist.id == artistId)
                                            .name,
                                      )
                                    : const SizedBox.shrink(),
                              ),
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
