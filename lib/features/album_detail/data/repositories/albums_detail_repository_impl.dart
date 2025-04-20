import 'package:buitify_coffee/features/album_detail/data/models/album/album_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/album/album.dart';
import '../../domain/entities/track/track_item.dart';
import '../../domain/repositories/album_detail_repository.dart';
import '../datasources/album_detail_remote_data_source.dart';

class AlbumDetailRepositoryImpl implements AlbumDetailRepository {
  final AlbumDetailRemoteDataSource remoteDataSource;

  AlbumDetailRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<TrackItem>>> getAlbumTracks(
      {required String albumId, int offset = 0, int limit = 50}) async {
    try {
      final result = await remoteDataSource.getAlbumTracks(
          albumId: albumId, offset: offset, limit: limit);
      return Right(result.data
              ?.map((model) => model.toEntity(albumImages: []))
              .toList() ??
          []);
    } catch (e) {
      return const Right([]);
    }
  }

  @override
  Future<Either<Failure, Album>> getAlbumInfo(String albumId) async {
    try {
      final result = await remoteDataSource.getAlbumInfo(albumId);
      return Right(
        result.data?.toEntity() ??
            const Album(
              id: '',
              name: '',
              images: [],
              type: '',
              albumType: '',
              releaseDate: '',
              totalTracks: 0,
              artists: [],
            ),
      );
    } catch (e) {
      return const Right(
        Album(
          id: '',
          name: '',
          images: [],
          type: '',
          albumType: '',
          releaseDate: '',
          totalTracks: 0,
          artists: [],
        ),
      );
    }
  }
}
