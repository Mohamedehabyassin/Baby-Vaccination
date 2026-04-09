import 'dart:ui';

import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/localization/gen/app_localizations.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalizationWrapper {
  Locale _locale = const Locale(AppStrings.english);

  void setLocale(Locale locale) => _locale = locale;

  AppLocalizations get current => lookupAppLocalizations(_locale);
}
