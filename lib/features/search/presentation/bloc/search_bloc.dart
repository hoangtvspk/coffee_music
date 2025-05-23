import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/entities/status/status.dart';
import '../../data/repositories/search_repository_impl.dart';
import '../../domain/entities/search_result.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepositoryImpl _repository;

  SearchBloc(this._repository) : super(const SearchState()) {
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }

  Future<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.isEmpty) {
      emit(state.copyWith(
        searchResults: const SearchResult(
          tracks: [],
          albums: [],
          artists: [],
        ),
        statusSearch: const Status.success(),
      ));
      return;
    }

    emit(state.copyWith(statusSearch: const Status.loading()));

    try {
      final results = await _repository.search(event.query);
      emit(state.copyWith(
        searchResults: results,
        statusSearch: const Status.success(),
      ));
    } catch (e) {
      emit(state.copyWith(
        statusSearch: Status.failure(e.toString()),
      ));
    }
  }
}
