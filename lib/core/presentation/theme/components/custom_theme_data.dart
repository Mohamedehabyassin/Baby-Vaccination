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
    scaffoldBackgroundColor: currentTheme.mistWhite,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return currentTheme.leafGreen.withAlpha(40); // Hov Pressed color
          }
          if (states.contains(WidgetState.hovered)) {
            return currentTheme.leafGreen.withAlpha(
              40,
            ); // Hover color (web/desktop)
          }
          return null; // Default
        }),
      ),
    ),

    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: currentTheme.surface,
    //   type: BottomNavigationBarType.fixed,
    //   elevation: 10,
    // ),
    // primaryColor: currentTheme.primary,
    brightness: Brightness.dark,
    // switchTheme: SwitchThemeData(
    //     thumbColor: MaterialStatePropertyAll<Color>(currentTheme.primary)),
    // radioTheme: RadioThemeData(
    //     fillColor: MaterialStatePropertyAll<Color>(currentTheme.primary)),
    // datePickerTheme: DatePickerThemeData(
    //     backgroundColor: currentTheme.background,
    //     headerBackgroundColor: currentTheme.primary,
    //     rangePickerHeaderBackgroundColor: currentTheme.primary,
    //     confirmButtonStyle: ButtonStyle(
    //         textStyle: MaterialStatePropertyAll(
    //             TextStyle(color: currentTheme.primaryGreen800))),
    //     cancelButtonStyle: ButtonStyle(
    //         textStyle: MaterialStatePropertyAll(
    //             TextStyle(color: currentTheme.paleSky500))),
    //     rangeSelectionBackgroundColor: currentTheme.primary),
    // expansionTileTheme: ExpansionTileThemeData(
    //   iconColor: currentTheme.primary,
    // ),
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
    scaffoldBackgroundColor: currentTheme.mistWhite,
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: currentTheme.surface,
    //   elevation: 10,
    // ),
    // primaryColor: currentTheme.primary,
    brightness: Brightness.dark,
    // primarySwatch: Colors.blue,
    fontFamily: AppStrings.nunito,
    useMaterial3: false,
  );
}
