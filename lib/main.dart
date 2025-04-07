import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_clean_architectore/core/config/env_config.dart';
import 'package:flutter_bloc_with_clean_architectore/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_bloc_with_clean_architectore/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_bloc_with_clean_architectore/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc_with_clean_architectore/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_bloc_with_clean_architectore/features/auth/presentation/bloc/auth_bloc.dart';
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
        BlocProvider(
            create: (context) => AuthBloc(LoginUseCase(authRepository))),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        color: const Color(0xFFE8DAB8),
        routerConfig: router,
      ),
    );
  }
}
