import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/album/album.dart';
import '../entities/track/track_item.dart';

abstract class AlbumDetailRepository {
  Future<Either<Failure, List<TrackItem>>> getAlbumTracks(
      {required String albumId, int offset = 0, int limit = 50});
  Future<Either<Failure, Album>> getAlbumInfo(String albumId);
}
