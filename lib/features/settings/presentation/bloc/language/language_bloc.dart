import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'language_event.dart';
import 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final SharedPreferences _prefs;
  static const String _languageKey = 'language_code';

  LanguageBloc(this._prefs) : super(const LanguageState()) {
    on<LanguageEvent>((event, emit) async {
      await event.map(
        changeLanguage: (e) => _onChangeLanguage(e.languageCode, emit),
        loadLanguage: (_) => _onLoadLanguage(emit),
      );
    });
  }

  Future<void> _onChangeLanguage(
      String languageCode, Emitter<LanguageState> emit) async {
    if (emit.isDone) return;
    emit(state.copyWith(isLoading: true));
    try {
      await _prefs.setString(_languageKey, languageCode);
      if (!emit.isDone) {
        emit(state.copyWith(
          languageCode: languageCode,
          isLoading: false,
        ));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(state.copyWith(
          error: e.toString(),
          isLoading: false,
        ));
      }
    }
  }

  Future<void> _onLoadLanguage(Emitter<LanguageState> emit) async {
    if (emit.isDone) return;
    emit(state.copyWith(isLoading: true));
    try {
      final languageCode = _prefs.getString(_languageKey) ?? 'en';
      if (!emit.isDone) {
        emit(state.copyWith(
          languageCode: languageCode,
          isLoading: false,
        ));
      }
    } catch (e) {
      if (!emit.isDone) {
        emit(state.copyWith(
          error: e.toString(),
          isLoading: false,
        ));
      }
    }
  }
}
