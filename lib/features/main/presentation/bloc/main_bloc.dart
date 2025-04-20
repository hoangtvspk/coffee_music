import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GoRouter _router;

  MainBloc(this._router) : super(const MainState()) {
    on<MainTabChanged>(_onTabChanged);
    on<MainDeepLinkReceived>(_onDeepLinkReceived);
  }

  void _onTabChanged(MainTabChanged event, Emitter<MainState> emit) {
    emit(state.copyWith(
      selectedIndex: event.index,
      currentTab: event.tab,
    ));
  }

  void _onDeepLinkReceived(
      MainDeepLinkReceived event, Emitter<MainState> emit) {
    final tab = event.tab;
    if (tab == null) return;

    final index = switch (tab) {
      'home' => 0,
      'search' => 1,
      'library' => 2,
      'settings' => 3,
      _ => 0,
    };

    emit(state.copyWith(
      selectedIndex: index,
      currentTab: tab,
    ));
  }
}
