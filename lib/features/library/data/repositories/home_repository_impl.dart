import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../features/home/domain/entities/playlist/playlist.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/playlist/playlist_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Playlist>>> getUserPlaylists({
    required String userId,
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final result = await remoteDataSource.getUserPlaylists(
        userId: userId,
        offset: offset,
        limit: limit,
      );
      return Right(result.data?.map((e) => e.toEntity()).toList() ?? []);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
