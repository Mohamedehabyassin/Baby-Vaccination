import 'package:flutter/material.dart';

import '../model/theme_base.dart';

/// The Elevated Nursery — light palette (reference bases):
/// Primary `#A8D5BA`, Secondary `#FAD0C4`, Tertiary `#B9E3F0`, Neutral `#FFFBEC`.
class LightTheme extends ThemeBase {
  @override
  String get name => 'light';

  // —— Primary (sage) ——
  @override
  Color get primary100 => const Color(0xFFEEF7F1);
  @override
  Color get primary200 => const Color(0xFFD4EEE0);
  @override
  Color get primary300 => const Color(0xFFB8E3C8);
  @override
  Color get primary400 => const Color(0xFFABDDCC);
  @override
  Color get primary500 => const Color(0xFFA8D5BA);
  @override
  Color get primary600 => const Color(0xFF8CC4A0);
  @override
  Color get primary700 => const Color(0xFF70A882);
  @override
  Color get primary800 => const Color(0xFF558A65);
  @override
  Color get primary900 => const Color(0xFF3D6648);

  // —— Secondary (peach) ——
  @override
  Color get secondary100 => const Color(0xFFFFF8F6);
  @override
  Color get secondary200 => const Color(0xFFFEEFEA);
  @override
  Color get secondary300 => const Color(0xFFFCE9E3);
  @override
  Color get secondary400 => const Color(0xFFFBD9D0);
  @override
  Color get secondary500 => const Color(0xFFFAD0C4);
  @override
  Color get secondary600 => const Color(0xFFE8B5A0);
  @override
  Color get secondary700 => const Color(0xFFD4937A);
  @override
  Color get secondary800 => const Color(0xFFB86F52);
  @override
  Color get secondary900 => const Color(0xFF8F4A35);

  // —— Tertiary (sky) ——
  @override
  Color get tertiary100 => const Color(0xFFF0FAFC);
  @override
  Color get tertiary200 => const Color(0xFFD4F1F9);
  @override
  Color get tertiary300 => const Color(0xFFC0E5F0);
  @override
  Color get tertiary400 => const Color(0xFF9DD9E8);
  @override
  Color get tertiary500 => const Color(0xFFB9E3F0);
  @override
  Color get tertiary600 => const Color(0xFF8BCFE1);
  @override
  Color get tertiary700 => const Color(0xFF5FB8D0);
  @override
  Color get tertiary800 => const Color(0xFF3D9AB3);
  @override
  Color get tertiary900 => const Color(0xFF2A7A8F);

  // —— Neutral (cream) ——
  @override
  Color get neutral100 => const Color(0xFFFEFEF9);
  @override
  Color get neutral200 => const Color(0xFFFEFBF6);
  @override
  Color get neutral300 => const Color(0xFFFEFCF0);
  @override
  Color get neutral400 => const Color(0xFFFFFBF8);
  @override
  Color get neutral500 => const Color(0xFFFFFBEC);
  @override
  Color get neutral600 => const Color(0xFFE8E4D0);
  @override
  Color get neutral700 => const Color(0xFFC9C4B0);
  @override
  Color get neutral800 => const Color(0xFF9A9478);
  @override
  Color get neutral900 => const Color(0xFF3D3528);

  @override
  Color get success => const Color(0xFF4CAF50);
  @override
  Color get warning => const Color(0xFFFFB74D);
  @override
  Color get error => const Color(0xFFE57373);
  @override
  Color get info => tertiary500;

  @override
  Color get mistWhite => neutral500;

  @override
  Color get leafGreen => primary700;

  @override
  Color get darkText => const Color(0xFF393927);
}
