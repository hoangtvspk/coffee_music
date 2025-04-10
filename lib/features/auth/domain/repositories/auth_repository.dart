import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login();
  Future<Either<Failure, void>> logout();
}
