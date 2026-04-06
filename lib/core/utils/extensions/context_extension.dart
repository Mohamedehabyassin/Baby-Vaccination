import 'package:baby_vaccination/core/localization/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension KeyboardUtils on BuildContext {
  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }
}

extension LocalizationX on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}
