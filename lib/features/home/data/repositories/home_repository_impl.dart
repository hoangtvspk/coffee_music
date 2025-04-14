import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/album/album.dart';
import '../../domain/entities/playlist/playlist.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/album/album_model.dart';
import '../models/playlist/playlist_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Album>>> getNewReleases(
      {int offset = 0, int limit = 20}) async {
    try {
      final result =
          await remoteDataSource.getNewReleases(offset: offset, limit: limit);
      return Right(
          result.data?.map((model) => model.toEntity()).toList() ?? []);
    } catch (e) {
      return const Right([]);
    }
  }

  @override
  Future<Either<Failure, List<Playlist>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId}) async {
    try {
      final result = await remoteDataSource.getUserPlaylists(
          offset: offset, limit: limit, userId: userId);
      return Right(
          result.data?.map((model) => model.toEntity()).toList() ?? []);
    } catch (e) {
      return const Right([]);
    }
  }
}
