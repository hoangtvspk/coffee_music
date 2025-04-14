import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class GetUserUseCase implements UseCase<User, GetUserParams> {
  final AuthRepository repository;

  GetUserUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(GetUserParams params) {
    return repository.getUser();
  }
}

class GetUserParams {
  GetUserParams();
}
