import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';

class GetSeveralTrack implements UseCase<List<Track>, String> {
  final HomeRepository repository;

  GetSeveralTrack(this.repository);

  @override
  Future<Either<Failure, List<Track>>> call(String params) async {
    return await repository.getSeveralTracks(
      ids: params,
    );
  }
}
