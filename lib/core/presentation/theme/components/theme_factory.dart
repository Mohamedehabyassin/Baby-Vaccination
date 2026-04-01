import 'package:baby_vaccination/core/domain/constants/strings.dart';

import 'dark_theme.dart';
import 'light_theme.dart';
import '../model/theme_base.dart';

ThemeBase currentTheme = ThemeFactory.instance(AppStrings.lightTheme);

class ThemeFactory {
  static ThemeBase instance(String themeName) {
    if (themeName == AppStrings.darkTheme) {
      return DarkTheme();
    }
    return LightTheme();
  }
}
