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
      userId: params.userId,
      offset: params.offset,
      limit: params.limit,
    );
  }
}

class UserPaginationParams {
  final String userId;
  final int offset;
  final int limit;

  const UserPaginationParams({
    required this.userId,
    this.offset = 0,
    this.limit = 20,
  });
}
