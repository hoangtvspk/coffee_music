import 'package:buitify_coffee/features/home/data/models/track/track_model.dart';
import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/album/album_model.dart';
import '../models/playlist/playlist_model.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<BaseResponse<List<AlbumModel>>> getNewReleases(
      {int offset = 0, int limit = 20});
  Future<BaseResponse<List<PlaylistModel>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId});
  Future<BaseResponse<TrackModel>> getSeveralTracks({required String ids});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final dioClient = DioClient();

  @override
  Future<BaseResponse<List<AlbumModel>>> getNewReleases(
      {int offset = 0, int limit = 20}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.newReleases,
        queryParameters: {
          'offset': offset,
          'limit': limit,
          'country': 'US',
        },
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'new_releases_${offset}_$limit',
            'maxStale': const Duration(days: 1),
          },
        ),
      );

      final albums = (response.data['albums']['items'] as List)
          .map((album) => AlbumModel.fromJson(album))
          .toList();
      return BaseResponse(data: albums);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<BaseResponse<List<PlaylistModel>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.userPlaylists(userId),
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'user_playlists_${userId}_${offset}_$limit',
            'maxStale': const Duration(days: 1),
          },
        ),
      );

      final items = response.data['items'] as List;

      final playlists = items.map((playlist) {
        try {
          return PlaylistModel.fromJson(playlist);
        } catch (e) {
          rethrow;
        }
      }).toList();

      return BaseResponse(data: playlists);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<BaseResponse<TrackModel>> getSeveralTracks(
      {required String ids}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.severalTracks(ids),
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'several_tracks_$ids',
            'maxStale': const Duration(days: 1),
          },
        ),
      );

      print("Raw response data: ${response.data}");
      print("Tracks list: ${response.data['tracks']}");

      final albumsList = (response.data['tracks'] as List).map((track) {
        final album = track['album'];
        final albumModel = AlbumModel.fromJson(album);
        return albumModel.toEntity();
      }).toList();
      print("Processed albums: $albumsList");

      final tracks = TrackModel(albums: albumsList);
      print("Converted TrackModel: $tracks");

      return BaseResponse(data: tracks);
    } catch (e) {
      print("Error in getSeveralTracks: $e");
      throw Exception(e);
    }
  }
}
