import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default('en') String languageCode,
    @Default(false) bool isLoading,
    String? error,
  }) = _LanguageState;
}
