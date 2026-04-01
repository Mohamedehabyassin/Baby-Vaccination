import 'dart:ui';

import 'package:baby_vaccination/core/domain/constants/strings.dart';
import 'package:baby_vaccination/core/presentation/localization/app_localizations.dart';

class LocalizationWrapper {
  Locale _locale = const Locale(AppStrings.english);

  void setLocale(Locale locale) => _locale = locale;

  AppLocalizations get current => lookupAppLocalizations(_locale);
}
