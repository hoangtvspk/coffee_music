import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/album/album_model.dart';
import '../models/track_item/track_item_model.dart';
import 'package:dio/dio.dart';

abstract class AlbumDetailRemoteDataSource {
  Future<BaseResponse<List<TrackItemModel>>> getAlbumTracks(
      {required String albumId, int offset = 0, int limit = 50});
  Future<BaseResponse<AlbumModel>> getAlbumInfo(String albumId);
}

class AlbumDetailRemoteDataSourceImpl implements AlbumDetailRemoteDataSource {
  final dioClient = DioClient();

  @override
  Future<BaseResponse<List<TrackItemModel>>> getAlbumTracks(
      {required String albumId, int offset = 0, int limit = 50}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.albumTracks(albumId),
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'album_tracks_${albumId}_${offset}_$limit',
            'maxStale': const Duration(days: 1),
          },
        ),
      );

      final tracks = (response.data['items'] as List)
          .map(
              (track) => TrackItemModel.fromJson(track as Map<String, dynamic>))
          .toList();
      return BaseResponse(data: tracks);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<BaseResponse<AlbumModel>> getAlbumInfo(String albumId) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.album(albumId),
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'album_info_$albumId',
            'maxStale': const Duration(days: 1),
          },
        ),
      );
      return BaseResponse(
        data: AlbumModel.fromJson(response.data),
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
