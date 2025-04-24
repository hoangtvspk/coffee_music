import 'package:dio/dio.dart';
import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/playlist/playlist_model.dart';

abstract class HomeRemoteDataSource {
  Future<BaseResponse<List<PlaylistModel>>> getUserPlaylists(
      {int offset = 0, int limit = 20, required String userId});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final dioClient = DioClient();

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
}
