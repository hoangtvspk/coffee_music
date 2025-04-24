import 'package:buitify_coffee/core/error/failure.dart';
import 'package:buitify_coffee/core/usecase/usecase.dart';
import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:buitify_coffee/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetSavedTrack extends UseCase<List<Track>, GetSavedTrackParams> {
  final HomeRepository homeRepository;

  GetSavedTrack(this.homeRepository);

  @override
  Future<Either<Failure, List<Track>>> call(GetSavedTrackParams params) {
    return homeRepository.getSavedTracks(
      trackId: params.trackId,
      offset: params.offset,
      limit: params.limit,
    );
  }
}

class GetSavedTrackParams extends PaginationParams {
  final String trackId;

  const GetSavedTrackParams(
      {required this.trackId, required super.offset, required super.limit});
}
