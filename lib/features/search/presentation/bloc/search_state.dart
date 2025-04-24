import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/entities/status/status.dart';
import '../../domain/entities/search_result.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchResult(tracks: [], albums: [], artists: []))
    SearchResult searchResults,
    @Default(Status.idle()) Status statusSearch,
  }) = _SearchState;
}
