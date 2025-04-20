import 'package:buitify_coffee/core/utils/app_utils.dart';
import 'package:buitify_coffee/features/album_detail/data/datasources/album_detail_remote_data_source.dart';
import 'package:buitify_coffee/features/album_detail/data/repositories/albums_detail_repository_impl.dart';
import 'package:buitify_coffee/features/auth/presentation/screens/login_screen.dart';
import 'package:buitify_coffee/features/main/presentation/screens/main_screen.dart';
import 'package:buitify_coffee/features/register/data/datasources/auth_remote_data_source.dart';
import 'package:buitify_coffee/features/register/domain/repositories/register_repository.dart';
import 'package:buitify_coffee/features/register/presentation/bloc/register_bloc.dart';
import 'package:buitify_coffee/features/register/presentation/pages/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import '../../features/album_detail/domain/usecases/get_album_info.dart';
import '../../features/album_detail/domain/usecases/get_album_tracks.dart';
import '../../features/album_detail/presentation/bloc/album_track/album_tracks_bloc.dart';
import '../../features/album_detail/presentation/screens/album_detail_screen.dart';
import '../../features/register/data/repositories/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import '../storage/secure_storage.dart';
import 'package:dio/dio.dart';

GoRouter router = GoRouter(
  initialLocation: '/main',
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  redirect: (BuildContext context, GoRouterState state) async {
    debugPrint('Router redirect called with path: ${state.path}');
    debugPrint('Router redirect called with uri: ${state.uri}');

    // Handle deep links with custom scheme
    if (state.uri.scheme == 'buitify') {
      debugPrint('Handling buitify scheme deep link');
      final path = state.uri.path;
      final queryParams = state.uri.queryParameters;
      debugPrint('Extracted path: $path');
      debugPrint('Query params: $queryParams');

      // Handle tab query parameter
      if (queryParams.containsKey('tab')) {
        final tab = queryParams['tab'];
        debugPrint('Tab parameter: $tab');
        return '/main?tab=$tab';
      }

      // If no tab parameter, use the path
      if (path.startsWith('/main/')) {
        final tab = path.split('/main/')[1];
        return '/main?tab=$tab';
      }

      return '/main';
    }

    final token = await SecureStorage().readAccessToken();
    final isAuth = token != null;
    debugPrint('User is authenticated: $isAuth');

    // Handle token expiration from DioClient
    if (state.extra is DioException) {
      final error = state.extra as DioException;
      if (error.error == 'Token refresh failed' ||
          error.error == 'No refresh token available') {
        debugPrint('Token refresh failed, redirecting to login');
        return '/';
      }
    }
    FlutterNativeSplash.remove();

    // If we have a path, handle it
    if (state.path != null) {
      final isGoingToLogin = state.path == '/';
      final isGoingToMain = state.path?.startsWith('/main') ?? false;
      debugPrint(
          'isGoingToLogin: $isGoingToLogin, isGoingToMain: $isGoingToMain');

      // If not authenticated and not going to login, redirect to login
      if (!isAuth && !isGoingToLogin) {
        debugPrint('Not authenticated, redirecting to login');
        return '/';
      }

      // If authenticated and going to login, redirect to main
      if (isAuth && isGoingToLogin) {
        debugPrint(
            'Authenticated user trying to access login, redirecting to main');
        return '/main';
      }

      // Allow the route to proceed if we have a valid path
      debugPrint('Allowing navigation to: ${state.path}');
      return null;
    }

    // If no path specified and user is authenticated, go to main
    // if (isAuth) {
    //   debugPrint('No path specified, redirecting to main');
    //   return state.path;
    // }

    debugPrint('No redirect needed, proceeding with current path');
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    RouteUtils.createPageBloc<RegisterBloc, RegisterRepository,
        RegisterRemoteDataSource>(
      createDataSource: () => RegisterRemoteDataSourceImpl(),
      createRepository: (dataSource) => RegisterRepositoryImpl(dataSource),
      bloc: (repository) => RegisterBloc(registerRepository: repository),
      child: const RegisterPage(),
    ),
    GoRoute(
      path: '/album/:albumId',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: BlocProvider(
            create: (context) => AlbumTracksBloc(
              getAlbumTracks: GetAlbumTracks(
                AlbumDetailRepositoryImpl(
                  AlbumDetailRemoteDataSourceImpl(),
                ),
              ),
              getAlbumInfo: GetAlbumInfo(
                AlbumDetailRepositoryImpl(
                  AlbumDetailRemoteDataSourceImpl(),
                ),
              ),
            ),
            child: AlbumDetailScreen(
              albumId: state.pathParameters['albumId'] ?? '',
            ),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 0.1);
            const end = Offset.zero;
            const curve = Curves.easeOutCubic;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: offsetAnimation,
                child: ScaleTransition(
                  scale: Tween<double>(
                    begin: 0.95,
                    end: 1.0,
                  ).animate(CurvedAnimation(
                    parent: animation,
                    curve: curve,
                  )),
                  child: child,
                ),
              ),
            );
          },
          transitionDuration: const Duration(milliseconds: 500),
        );
      },
    ),
  ],
);
