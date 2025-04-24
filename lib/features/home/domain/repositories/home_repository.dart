import 'package:buitify_coffee/features/home/domain/entities/track/track.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/domain/entities/album/album.dart';
import '../../../../core/domain/entities/playlist/playlist.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Album>>> getNewReleases({int offset, int limit});
  Future<Either<Failure, List<Playlist>>> getUserPlaylists(
      {int offset, int limit, required String userId});
  Future<Either<Failure, List<Track>>> getSeveralTracks({required String ids});
  Future<Either<Failure, List<Track>>> getSavedTracks(
      {required String trackId, int offset, int limit});
  Future<Either<Failure, List<Track>>> getArtistTopTracks(
      {required String artistId, int offset, int limit});
}
