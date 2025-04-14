import 'package:buitify_coffee/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, User>> login() async {
    try {
      final result = await remoteDataSource.loginWithSpotify();
      if (result.data == null) {
        throw Exception("Login Failed");
      }
      return Right(result.data!.toEntity());
    } catch (e) {
      print(e);
      return const Left(ServerFailure("Login Failed"));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      final result = await remoteDataSource.logout();
      return Right(result);
    } catch (e) {
      print(e);
      return const Left(ServerFailure("Logout Failed"));
    }
  }

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final result = await remoteDataSource.getUserProfile();
      return Right(result.data!.toEntity());
    } catch (e) {
      print(e);
      return const Left(ServerFailure("Get User Failed"));
    }
  }
}
