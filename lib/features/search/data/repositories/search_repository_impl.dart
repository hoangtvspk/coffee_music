import '../../domain/entities/search_result.dart';
import '../datasources/search_remote_data_source.dart';

class SearchRepositoryImpl {
  final SearchRemoteDataSource _remoteDataSource;

  SearchRepositoryImpl(this._remoteDataSource);

  Future<SearchResult> search(String query) async {
    try {
      final response = await _remoteDataSource.search(query);
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
