import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../entities/track/track_item.dart';
import '../repositories/tracks_list_repository.dart';

class GetTracksParams {
  final String listTrackId;
  final int offset;
  final int limit;

  GetTracksParams({
    required this.listTrackId,
    this.offset = 0,
    this.limit = 50,
  });
}

class GetTracks implements UseCase<List<TrackItem>, GetTracksParams> {
  final TracksListRepository repository;

  GetTracks(this.repository);

  @override
  Future<Either<Failure, List<TrackItem>>> call(GetTracksParams params) async {
    return await repository.getTracks(
      listTrackId: params.listTrackId,
      offset: params.offset,
      limit: params.limit,
    );
  }
}
