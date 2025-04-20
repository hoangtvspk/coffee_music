import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:buitify_coffee/core/config/env_config.dart';
import 'package:buitify_coffee/core/config/app_theme.dart';
import 'package:buitify_coffee/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:buitify_coffee/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:buitify_coffee/features/auth/domain/repositories/auth_repository.dart';
import 'package:buitify_coffee/features/auth/domain/usecases/login_usecase.dart';
import 'package:buitify_coffee/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:buitify_coffee/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/router/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  const environment =
      String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev');
  await EnvConfig.initialize(environment);
  final authRemoteDataSource = AuthRemoteDataSourceImpl();
  final authRepository = AuthRepositoryImpl(authRemoteDataSource);

  runApp(MyApp(authRepository: authRepository));
}

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;

  const MyApp({super.key, required this.authRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          AuthBloc bloc = AuthBloc(
            LoginUseCase(authRepository),
            GetUserUseCase(authRepository),
          );
          void checkAuth() async {
            final accessToken = await SecureStorage().readAccessToken();
            if (accessToken != null) {
              bloc.add(const AuthEvent.getUserInfo());
            }
          }

          checkAuth();
          return bloc;
        })
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        color: const Color(0xFFE8DAB8),
        routerConfig: router,
      ),
    );
  }
}
