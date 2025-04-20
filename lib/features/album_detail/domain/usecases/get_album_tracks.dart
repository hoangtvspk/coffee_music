import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../entities/track/track_item.dart';
import '../repositories/album_detail_repository.dart';

class GetAlbumTracksParams {
  final String albumId;
  final int offset;
  final int limit;

  GetAlbumTracksParams({
    required this.albumId,
    this.offset = 0,
    this.limit = 50,
  });
}

class GetAlbumTracks implements UseCase<List<TrackItem>, GetAlbumTracksParams> {
  final AlbumDetailRepository repository;

  GetAlbumTracks(this.repository);

  @override
  Future<Either<Failure, List<TrackItem>>> call(
      GetAlbumTracksParams params) async {
    return await repository.getAlbumTracks(
      albumId: params.albumId,
      offset: params.offset,
      limit: params.limit,
    );
  }
}
