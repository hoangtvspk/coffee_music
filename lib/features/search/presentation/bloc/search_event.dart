part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.queryChanged(String query) = SearchQueryChanged;
}
