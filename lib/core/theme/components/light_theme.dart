import 'package:flutter/material.dart';
import '../model/theme_base.dart';

class LightTheme implements ThemeBase {
  @override
  String get name => "lightTheme";

  //! --- Core Brand & Primary Palette ---
  @override
  Color get primary50 => const Color(0xFFEDF4F0); // barely tinted white
  @override
  Color get primary100 => const Color(0xFFD1E6DA); // very light sage
  @override
  Color get primary200 => const Color(0xFFAAD0BA); // light sage
  @override
  Color get primary300 => const Color(0xFF7DB99A); // soft sage
  @override
  Color get primary400 => const Color(0xFF5A9178); // muted sage
  @override
  Color get primary500 => const Color(0xFF436D57); // signature sage ✦
  @override
  Color get primary600 => const Color(0xFF375A47); // deeper sage
  @override
  Color get primary700 => const Color(0xFF2B4738); // dark sage
  @override
  Color get primary800 => const Color(0xFF1F3428); // very dark sage
  @override
  Color get primary900 => const Color(0xFF122119); // near black sage
  @override
  Color get primary950 => const Color(0xFF091109); // darkest sage
  @override
  Color get primaryFixedDim => const Color(0xffb1dfc3); // Soft Sage for gradients
  @override
  Color get secondaryContainer => const Color(0xffffdbd0); // Pastoral Peach
  @override
  Color get onSecondaryContainer => const Color(0xff694b42); // Warm Cocoa for text and shadows

  //! --- Compatibility Logic (Aliases for existing widgets) ---
  @override
  Color get tertiary400 => primaryFixedDim;

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

  @override
  Color get neutral50 => const Color(0xFFFAFAFA); // almost white
  @override
  Color get neutral100 => const Color(0xFFF5F5F5); // soft gray
  @override
  Color get neutral200 => const Color(0xFFEEEEEE);
  @override
  Color get neutral300 => const Color(0xFFE0E0E0);
  @override
  Color get neutral400 => const Color(0xFFBDBDBD);
  @override
  Color get neutral500 => const Color(0xFF9E9E9E); // true mid gray
  @override
  Color get neutral600 => const Color(0xFF757575);
  @override
  Color get neutral700 => const Color(0xFF616161);
  @override
  Color get neutral800 => const Color(0xFF424242);
  @override
  Color get neutral900 => const Color(0xFF212121); // very dark gray
  @override
  Color get neutral950 => const Color(0xFF121212); // near black
}
