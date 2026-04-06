import 'package:flutter/material.dart';

/// The Elevated Nursery Design System — Base Tones:
/// - Philosophy: "The Weightless Archive"
abstract class ThemeBase {
  String get name;

  //! Core Brand
  Color get primary;
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

  //! --- Compatibility Logic (Aliases for existing widgets) ---
  Color get primary100;
  Color get primary300;
  Color get primary500;
  Color get primary600;
  Color get darkText;
  Color get mistWhite;
  Color get tertiary400;

  // Added aliases to fix lint errors in existing components
  Color get neutral100; // Maps to surface
  Color get neutral300; // Maps to surfaceContainerHighest
  Color get neutral400; // Maps to onSurface
  Color get neutral800; // Maps to onSurface
}
