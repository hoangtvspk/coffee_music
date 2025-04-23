import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/track/track_item.dart';
import '../../domain/repositories/tracks_list_repository.dart';
import '../datasources/tracks_list_remote_data_source.dart';

class TracksListRepositoryImpl implements TracksListRepository {
  final TrackListRemoteDataSource remoteDataSource;

  TracksListRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<TrackItem>>> getTracks(
      {required String listTrackId, int offset = 0, int limit = 50}) async {
    try {
      final result = await remoteDataSource.getTracks(
          listTrackId: listTrackId, offset: offset, limit: limit);
      print('result: ${result.data}');
      return Right(result.data
              ?.map((model) =>
                  model.toEntity(albumImages: model.album?.images ?? []))
              .toList() ??
          []);
    } catch (e) {
      return const Right([]);
    }
  }
}
