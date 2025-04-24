import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/domain/entities/playlist/playlist.dart';
import '../repositories/home_repository.dart';

class GetUserPlaylists
    implements UseCase<List<Playlist>, UserPaginationParams> {
  final HomeRepository repository;

  GetUserPlaylists(this.repository);

  @override
  Future<Either<Failure, List<Playlist>>> call(
      UserPaginationParams params) async {
    return await repository.getUserPlaylists(
      offset: params.offset,
      limit: params.limit,
      userId: params.userId,
    );
  }
}
