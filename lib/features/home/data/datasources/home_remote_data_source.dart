import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/album/album_model.dart';
import '../models/playlist/playlist_model.dart';

abstract class HomeRemoteDataSource {
  Future<BaseResponse<List<AlbumModel>>> getNewReleases(
      {int offset = 0, int limit = 20});
  Future<BaseResponse<List<PlaylistModel>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId});
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
      );
      // print('New Releases Response: ${response.data}');
      // print('Albums Data: ${response.data['albums']}');
      // print('Albums Items: ${response.data['albums']['items']}');

      final albums = (response.data['albums']['items'] as List)
          .map((album) => AlbumModel.fromJson(album))
          .toList();
      print('Parsed Albums: ${albums.length}');
      return BaseResponse(data: albums);
    } catch (e, stackTrace) {
      print('Error in getNewReleases: $e');
      print('Stack trace: $stackTrace');
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
      );

      final items = response.data['items'] as List;
      print('First Item: ${items.first}');
      print('Owner Data: ${items.first['owner']}');

      final playlists = items.map((playlist) {
        try {
          return PlaylistModel.fromJson(playlist);
        } catch (e, stackTrace) {
          print('Error parsing playlist: $playlist');
          print('Parse error: $e');
          print('Stack trace: $stackTrace');
          rethrow;
        }
      }).toList();

      return BaseResponse(data: playlists);
    } catch (e, stackTrace) {
      print('Error in getUserPlaylists: $e');
      print('Stack trace: $stackTrace');
      throw Exception(e);
    }
  }
}
