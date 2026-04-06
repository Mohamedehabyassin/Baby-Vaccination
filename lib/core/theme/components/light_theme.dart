import 'package:flutter/material.dart';
import '../model/theme_base.dart';

class LightTheme implements ThemeBase {
  @override
  String get name => "lightTheme";

  //! --- Core Brand & Primary Palette ---
  @override
  Color get primary => const Color(0xff436d57); // The signature Sage
  @override
  Color get primaryFixedDim => const Color(0xffb1dfc3); // Soft Sage for gradients
  @override
  Color get secondaryContainer => const Color(0xffffdbd0); // Pastoral Peach
  @override
  Color get onSecondaryContainer => const Color(0xff694b42); // Warm Cocoa for text and shadows

  //! --- Surfaces & Hierarchy (The "No-Line" Rule) ---
  @override
  Color get surface => const Color(0xfffffbff); // The infinite canvas
  @override
  Color get surfaceContainerLow => const Color(0xfffefae7); // Content grouping
  @override
  Color get surfaceContainerHighest => const Color(0xffece9cf); // Elevated interactive elements
  @override
  Color get surfaceContainerLowest => const Color(0xffffffff); // Card layering
  @override
  Color get surfaceContainer => const Color(0xfff8f4df); // Background for layering

  //! --- Text & Lines (Editorial Contrast) ---
  @override
  Color get onSurface => const Color(0xff393927); // Body/Headline (Dark but not harsh)
  @override
  Color get outlineVariant => const Color(0xffbdbaa2); // The Ghost Border

  //! --- Utility Palette ---
  @override
  Color get success => const Color(0xFF6EDD9F);
  @override
  Color get warning => const Color(0xFFFACC15);
  @override
  Color get error => const Color(0xFFF87171);
  @override
  Color get info => const Color(0xFF60A5FA);

  //! --- Compatibility Logic (Aliases for existing widgets) ---
  @override
  Color get primary100 => surface; // Mapped to the airy background
  @override
  Color get primary300 => primaryFixedDim;
  @override
  Color get primary500 => primary;
  @override
  Color get primary600 => primary;
  @override
  Color get darkText => onSurface;
  @override
  Color get mistWhite => surface;
  @override
  Color get tertiary400 => primaryFixedDim;

  @override
  Color get neutral100 => surface;
  @override
  Color get neutral300 => surfaceContainerHighest;
  @override
  Color get neutral400 => onSurface;
  @override
  Color get neutral800 => onSurface;
}
