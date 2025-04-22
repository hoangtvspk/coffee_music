import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  String minutes(int minutes) => '$minutes ${l10n.minutes}';
  String seconds(int seconds) => '$seconds ${l10n.seconds}';
}
