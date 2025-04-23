import 'package:buitify_coffee/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/search_result.dart';

class SearchRemoteDataSource {
  Future<SearchResult> search(String query) async {
    try {
      final response = await DioClient().get(
        '/search',
        queryParameters: {
          'q': query,
          'type': 'track,album,artist',
          'limit': 20,
        },
      );

      return SearchResult.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
