import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/album/album.dart';
import '../entities/playlist/playlist.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Album>>> getNewReleases(
      {int offset = 0, int limit = 20});
  Future<Either<Failure, List<Playlist>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId});
  Future<Either<Failure, Track>> getSeveralTracks({required String ids});
}
