import 'package:buitify_coffee/core/widgets/go_route_wrapper/go_route_with_bloc.dart';
import 'package:buitify_coffee/core/widgets/transition_wrapper/fade_screen_transition.dart';
import 'package:buitify_coffee/core/domain/entities/playlist/playlist.dart';
import 'package:buitify_coffee/features/media_player/data/datasources/player_remote_data_source.dart';
import 'package:buitify_coffee/features/media_player/data/repositories/player_repository_impl.dart';
import 'package:buitify_coffee/features/media_player/domain/repositories/player_repository.dart';
import 'package:buitify_coffee/features/media_player/presentation/bloc/player_bloc.dart';
import 'package:buitify_coffee/features/media_player/presentation/screens/player_screen.dart';
import 'package:buitify_coffee/features/tracks_list/data/datasources/tracks_list_remote_data_source.dart';
import 'package:buitify_coffee/features/tracks_list/data/repositories/tracks_list_repository_impl.dart';
import 'package:buitify_coffee/features/tracks_list/domain/repositories/tracks_list_repository.dart';
import 'package:buitify_coffee/features/auth/presentation/screens/login_screen.dart';
import 'package:buitify_coffee/features/main/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/tracks_list/domain/usecases/get_tracks.dart';
import '../../features/tracks_list/presentation/bloc/track_list/tracks_list_bloc.dart';
import '../../features/tracks_list/presentation/screens/tracks_list_screen.dart';
import '../domain/entities/album/album.dart';
import '../network/dio_client.dart';
import '../storage/secure_storage.dart';

GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/main',
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  redirect: (BuildContext context, GoRouterState state) async {
    final token = await SecureStorage().readAccessToken();
    FlutterNativeSplash.remove();

    final isAuth = token != null;
    if (!isAuth) return '/login';

    // Handle deep links with custom scheme
    if (state.uri.scheme == 'buitify') {
      final queryParams = state.uri.queryParameters;

      // Handle tab query parameter
      if (queryParams.containsKey('tab')) {
        final tab = queryParams['tab'];
        debugPrint('Tab parameter: $tab');
        return '/main?tab=$tab';
      }

      return '/main';
    }

    if (isAuth && state.path == '/') {
      return '/main';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRouteWithBloc<TracksListBloc, TracksListRepository,
        TrackListRemoteDataSource>(
      path: '/album/:albumId',
      screenBuilder: (context, state) => AlbumDetailScreen<Album>(
        id: state.pathParameters['albumId'] ?? '',
        listInfo: state.extra as Album,
      ),
      createBloc: (repository, state) => TracksListBloc(
        getTracks: GetTracks(repository),
      ),
      createDataSource: () => AlbumTrackRemoteDataSourceImpl(),
      createRepository: (dataSource) => TracksListRepositoryImpl(dataSource),
      transitionBuilder: (child, state) => FadeScreenTransition(
        key: state.pageKey,
        child: child,
      ),
    ).build(),
    GoRouteWithBloc<TracksListBloc, TracksListRepository,
        TrackListRemoteDataSource>(
      path: '/playlist/:playlistId',
      screenBuilder: (context, state) => AlbumDetailScreen<Playlist>(
        id: state.pathParameters['playlistId'] ?? '',
        listInfo: state.extra as Playlist,
      ),
      createBloc: (repository, state) => TracksListBloc(
        getTracks: GetTracks(repository),
      ),
      createDataSource: () => PlaylistTrackRemoteDataSourceImpl(),
      createRepository: (dataSource) => TracksListRepositoryImpl(dataSource),
      transitionBuilder: (child, state) => FadeScreenTransition(
        key: state.pageKey,
        child: child,
      ),
    ).build(),
    GoRouteWithBloc<PlayerBloc, PlayerRepository, PlayerRemoteDataSource>(
      path: '/player',
      screenBuilder: (context, state) => PlayerScreen(
        trackDetails: state.extra as Map<String, String>,
      ),
      createBloc: (repository, state) => PlayerBloc(repository)
        ..add(PlayerEvent.playTrack(
            (state.extra as Map<String, String>)['url'] ?? '')),
      createDataSource: () => PlayerRemoteDataSourceImpl(),
      createRepository: (dataSource) => PlayerRepositoryImpl(dataSource),
      transitionBuilder: (child, state) => FadeScreenTransition(
        key: state.pageKey,
        child: child,
      ),
    ).build(),
  ],
);
