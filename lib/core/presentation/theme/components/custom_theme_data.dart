import 'package:baby_vaccination/core/domain/constants/strings.dart';
import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomThemeData {
  static final ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark, // For iOS: (dark icons)
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,

        statusBarIconBrightness:
            Brightness.dark, // For Android(M and greater): (dark icons)
      ),
    ),
    scaffoldBackgroundColor: currentTheme.primary100,
    brightness: Brightness.dark,
    fontFamily: AppStrings.nunito,
    useMaterial3: false,
  );

  static final ThemeData dark = ThemeData(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark, // For iOS: (dark icons)
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: false,
        statusBarIconBrightness:
            Brightness.light, // For Android(M and greater): (dark icons)
      ),
    ),
    scaffoldBackgroundColor: currentTheme.primary100,
    brightness: Brightness.dark,
    fontFamily: AppStrings.nunito,
    useMaterial3: false,
  );
}
