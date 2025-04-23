import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/base_response.dart';
import '../../../../core/network/dio_client.dart';
import '../models/track_item/track_item_model.dart';
import 'package:dio/dio.dart';

abstract class TrackListRemoteDataSource {
  Future<BaseResponse<List<TrackItemModel>>> getTracks(
      {required String listTrackId, int offset = 0, int limit = 50});
}

class AlbumTrackRemoteDataSourceImpl implements TrackListRemoteDataSource {
  final dioClient = DioClient();

  @override
  Future<BaseResponse<List<TrackItemModel>>> getTracks(
      {required String listTrackId, int offset = 0, int limit = 50}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.albumTracks(listTrackId),
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'album_tracks_${listTrackId}_${offset}_$limit',
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
}

class PlaylistTrackRemoteDataSourceImpl implements TrackListRemoteDataSource {
  final dioClient = DioClient();

  @override
  Future<BaseResponse<List<TrackItemModel>>> getTracks(
      {required String listTrackId, int offset = 0, int limit = 50}) async {
    try {
      final response = await dioClient.get(
        ApiEndpoints.playlistTracks(listTrackId),
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
        options: Options(
          extra: {
            'cache': true,
            'cacheKey': 'album_tracks_${listTrackId}_${offset}_$limit',
            'maxStale': const Duration(days: 1),
          },
        ),
      );

      print('response.data[items]: ${response.data['items']}');
      final tracks = (response.data['items'] as List)
          .map((track) => TrackItemModel.fromJson(
              track['track'] ?? track as Map<String, dynamic>))
          .toList();
      print('tracks: $tracks');
      return BaseResponse(data: tracks);
    } catch (e) {
      throw Exception(e);
    }
  }
}
