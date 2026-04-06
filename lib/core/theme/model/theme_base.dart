import 'package:flutter/material.dart';

/// Elevated Nursery palette — base tones:
/// - Primary (sage): `#A8D5BA`
/// - Secondary (peach): `#FAD0C4`
/// - Tertiary (sky): `#B9E3F0`
/// - Neutral (cream): `#FFFBEC`
abstract class ThemeBase {
  String get name;

  Color get primary100;
  Color get primary200;
  Color get primary300;
  Color get primary400;
  Color get primary500;
  Color get primary600;
  Color get primary700;
  Color get primary800;
  Color get primary900;

  Color get secondary100;
  Color get secondary200;
  Color get secondary300;
  Color get secondary400;
  Color get secondary500;
  Color get secondary600;
  Color get secondary700;
  Color get secondary800;
  Color get secondary900;

  Color get tertiary100;
  Color get tertiary200;
  Color get tertiary300;
  Color get tertiary400;
  Color get tertiary500;
  Color get tertiary600;
  Color get tertiary700;
  Color get tertiary800;
  Color get tertiary900;

  Color get neutral100;
  Color get neutral200;
  Color get neutral300;
  Color get neutral400;
  Color get neutral500;
  Color get neutral600;
  Color get neutral700;
  Color get neutral800;
  Color get neutral900;

  Color get success;
  Color get warning;
  Color get error;
  Color get info;

  /// Scaffold / canvas (neutral cream in light theme).
  Color get mistWhite;

  /// Strong primary sage for overlays, accents, and focus.
  Color get leafGreen;

  /// Primary body/headline text on surface.
  Color get darkText;
}
