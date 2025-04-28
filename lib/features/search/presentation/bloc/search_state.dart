part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchResult(tracks: [], albums: [], artists: []))
    SearchResult searchResults,
    @Default(Status.idle()) Status statusSearch,
  }) = _SearchState;
}
