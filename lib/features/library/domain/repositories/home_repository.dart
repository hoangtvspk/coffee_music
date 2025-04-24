import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/domain/entities/playlist/playlist.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Playlist>>> getUserPlaylists({
    required String userId,
    int offset = 0,
    int limit = 20,
  });
}
