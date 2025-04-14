import 'package:buitify_coffee/core/storage/secure_storage.dart';
import 'package:buitify_coffee/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final GetUserUseCase getUserUseCase;
  AuthBloc(this.loginUseCase, this.getUserUseCase)
      : super(const AuthState.initial()) {
    on<LoginEvent>((event, emit) async {
      emit(const AuthState.loading());

      final Either<Failure, User> result = await loginUseCase(
        LoginParams(),
      );

      await result.fold(
        (failure) async => emit(AuthState.failure(failure.message)),
        (user) async {
          if (!emit.isDone) {
            emit(AuthState.success(user));
          }
        },
      );
    });
    on<LogoutEvent>((event, emit) async {
      await SecureStorage().deleteAccessToken();
      emit(const AuthState.initial());
    });
    on<GetUserInfoEvent>((event, emit) async {
      emit(const AuthState.loading());
      final Either<Failure, User> result = await getUserUseCase(
        GetUserParams(),
      );

      await result.fold(
        (failure) async => emit(AuthState.failure(failure.message)),
        (user) async {
          if (!emit.isDone) {
            print("user $user");
            emit(AuthState.success(user));
          }
        },
      );
    });
  }
}
