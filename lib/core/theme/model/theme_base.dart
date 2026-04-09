import 'package:flutter/material.dart';

/// The Elevated Nursery Design System — Base Tones:
/// - Philosophy: "The Weightless Archive"
abstract class ThemeBase {
  String get name;

  //! Core Brand
  Color get primary50;
  Color get primary100;
  Color get primary200;
  Color get primary300;
  Color get primary400;
  Color get primary500;
  Color get primary600;
  Color get primary700;
  Color get primary800;
  Color get primary900;
  Color get primary950;

  Color get primaryFixedDim;
  Color get secondaryContainer;
  Color get onSecondaryContainer;

  //! Surfaces & Hierarchy (The "No-Line" Rule)
  Color get surface; // #fffbff - The infinite canvas
  Color get surfaceContainerLow; // #fefae7 - Content grouping
  Color get surfaceContainerHighest; // #ece9cf - Elevated interactive elements
  Color get surfaceContainerLowest; // #ffffff - Card layering base
  Color get surfaceContainer; // #f8f4df - Background for layering

  //! Text & Lines (Editorial Contrast)
  Color get onSurface; // #393927 - Body/Headline (Dark but not harsh)
  Color get outlineVariant; // #bdbaa2 - Ghost boundaries

  //! Utility
  Color get success;
  Color get warning;
  Color get error;
  Color get info;

  Color get tertiary400;

  // Added aliases to fix lint errors in existing components
  Color get neutral50;
  Color get neutral100;
  Color get neutral200;
  Color get neutral300;
  Color get neutral400;
  Color get neutral500;
  Color get neutral600;
  Color get neutral700;
  Color get neutral800;
  Color get neutral900;
  Color get neutral950;
}
