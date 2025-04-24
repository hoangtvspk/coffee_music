import 'package:buitify_coffee/core/error/failure.dart';
import 'package:buitify_coffee/core/usecase/usecase.dart';
import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:buitify_coffee/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetArtistTopTrack extends UseCase<List<Track>, GetArtistTopTrackParams> {
  final HomeRepository homeRepository;

  GetArtistTopTrack(this.homeRepository);

  @override
  Future<Either<Failure, List<Track>>> call(GetArtistTopTrackParams params) {
    return homeRepository.getArtistTopTracks(
      artistId: params.artistId,
      offset: params.offset,
      limit: params.limit,
    );
  }
}

class GetArtistTopTrackParams extends PaginationParams {
  final String artistId;

  const GetArtistTopTrackParams(
      {required this.artistId, required super.offset, required super.limit});
}
