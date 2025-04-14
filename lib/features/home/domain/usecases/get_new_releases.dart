import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/album/album.dart';
import '../repositories/home_repository.dart';

class GetNewReleases implements UseCase<List<Album>, PaginationParams> {
  final HomeRepository repository;

  GetNewReleases(this.repository);

  @override
  Future<Either<Failure, List<Album>>> call(PaginationParams params) async {
    return await repository.getNewReleases(
      offset: params.offset,
      limit: params.limit,
    );
  }
}
