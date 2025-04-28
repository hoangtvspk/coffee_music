import 'package:buitify_coffee/core/network/dio_client.dart';
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

      final searchResult = {
        'tracks': response.data['tracks']['items'],
        'albums': [],
        'artists': [],
      };
      print(searchResult);
      return SearchResult.fromJson(searchResult);
    } catch (e) {
      print('Error searching: $e');
      rethrow;
    }
  }
}
