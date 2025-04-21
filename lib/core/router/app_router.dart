import 'package:buitify_coffee/core/widgets/go_route_wrapper/go_route_with_bloc.dart';
import 'package:buitify_coffee/core/widgets/transition_wrapper/fade_screen_transition.dart';
import 'package:buitify_coffee/features/album_detail/data/datasources/album_detail_remote_data_source.dart';
import 'package:buitify_coffee/features/album_detail/data/repositories/albums_detail_repository_impl.dart';
import 'package:buitify_coffee/features/album_detail/domain/repositories/album_detail_repository.dart';
import 'package:buitify_coffee/features/auth/presentation/screens/login_screen.dart';
import 'package:buitify_coffee/features/main/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/album_detail/domain/usecases/get_album_info.dart';
import '../../features/album_detail/domain/usecases/get_album_tracks.dart';
import '../../features/album_detail/presentation/bloc/album_track/album_tracks_bloc.dart';
import '../../features/album_detail/presentation/screens/album_detail_screen.dart';
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
    GoRouteWithBloc<AlbumTracksBloc, AlbumDetailRepository,
        AlbumDetailRemoteDataSource>(
      path: '/album/:albumId',
      screenBuilder: (context, state) => AlbumDetailScreen(
        albumId: state.pathParameters['albumId'] ?? '',
      ),
      createBloc: (repository) => AlbumTracksBloc(
        getAlbumTracks: GetAlbumTracks(repository),
        getAlbumInfo: GetAlbumInfo(repository),
      ),
      createDataSource: () => AlbumDetailRemoteDataSourceImpl(),
      createRepository: (dataSource) => AlbumDetailRepositoryImpl(dataSource),
      transitionBuilder: (child, state) => FadeScreenTransition(
        key: state.pageKey,
        child: child,
      ),
    ).build(),
  ],
);
