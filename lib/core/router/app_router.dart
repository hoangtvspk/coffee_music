import 'package:buitify_coffee/core/utils/app_utils.dart';
import 'package:buitify_coffee/features/auth/presentation/screens/login_screen.dart';
import 'package:buitify_coffee/features/home/presentation/bloc/home_bloc.dart';
import 'package:buitify_coffee/features/home/presentation/screens/home_screen.dart';
import 'package:buitify_coffee/features/register/data/datasources/auth_remote_data_source.dart';
import 'package:buitify_coffee/features/register/domain/repositories/register_repository.dart';
import 'package:buitify_coffee/features/register/presentation/bloc/register_bloc.dart';
import 'package:buitify_coffee/features/register/presentation/pages/register_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import '../../features/register/data/repositories/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import '../storage/secure_storage.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  redirect: (BuildContext context, GoRouterState state) async {
    final token = await SecureStorage().readAccessToken();
    final isAuth = token != null;

    print("isAuth $isAuth");
    FlutterNativeSplash.remove();
    if (state.path == null) {
      if (isAuth) {
        return '/home';
      }
    } else {
      final isGoingToLogin = state.path == '/';

      // If not authenticated and not going to login, redirect to login
      if (!isAuth && !isGoingToLogin) {
        return '/';
      }

      // If authenticated and going to login, redirect to home
      if (isAuth && isGoingToLogin) {
        return '/home';
      }
    }

    // Get the current path

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    RouteUtils.createPageBloc<RegisterBloc, RegisterRepository,
        RegisterRemoteDataSource>(
      createDataSource: () => RegisterRemoteDataSourceImpl(),
      createRepository: (dataSource) => RegisterRepositoryImpl(dataSource),
      bloc: (repository) => RegisterBloc(registerRepository: repository),
      child: const RegisterPage(),
    ),
  ],
);
