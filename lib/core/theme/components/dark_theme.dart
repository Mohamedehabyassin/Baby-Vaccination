import 'package:flutter/material.dart';
import '../model/theme_base.dart';

class DarkTheme implements ThemeBase {
  @override
  String get name => "darkTheme";

  //! --- Core Brand & Primary Palette ---
  @override
  Color get primary500 => const Color(0xffb1dfc3); // Brighter Sage for dark mode
  @override
  Color get primaryFixedDim => const Color(0xff436d57); // Deep Sage
  @override
  Color get secondaryContainer => const Color(0xff694b42); // Warm Cocoa
  @override
  Color get onSecondaryContainer => const Color(0xffffdbd0); // Peach text

  //! --- Surfaces & Hierarchy (Deep Forest Charcoal) ---
  @override
  Color get surface => const Color(0xff1B1D19); // Deep Forest Charcoal
  @override
  Color get surfaceContainerLow => const Color(0xff2A2D23); // Deep tonal layer
  @override
  Color get surfaceContainerHighest => const Color(0xff3B3F32); // Visible card
  @override
  Color get surfaceContainerLowest => const Color(0xff121212); // Deepest base
  @override
  Color get surfaceContainer => const Color(0xff1F221B); // The standard background

  //! --- Text & Lines (Sophisticated Contrast) ---
  @override
  Color get onSurface => const Color(0xffECE9CF); // Soft bone white text
  @override
  Color get outlineVariant => const Color(0xffbdbaa2); // Ghostly lines

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
  Color get primary100 => surface;
  @override
  Color get primary300 => primaryFixedDim;
  @override
  @override
  Color get primary600 => primary500;

  @override
  Color get tertiary400 => primaryFixedDim;
  @override
  Color get neutral50 => const Color(0xFFFAFAFA); // almost white
  @override
  Color get neutral100 => const Color(0xFFF5F5F5); // soft gray
  @override
  Color get neutral200 => const Color(0xFFEEEEEE);
  @override
  Color get neutral300 => const Color(0xFFE0E0E0);
  @override
  Color get neutral400 => const Color(0xFFBDBDBD); // mid gray
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
  Color get neutral950 => const Color(0xFF121212);

  @override
  Color get primary200 => primary500.withValues(alpha: 0.15);

  @override
  Color get primary400 => primary500.withValues(alpha: 0.15);

  @override
  Color get primary50 => primary500.withValues(alpha: 0.15);

  @override
  Color get primary700 => throw UnimplementedError();

  @override
  Color get primary800 => primary600.withValues(alpha: 0.15);

  @override
  Color get primary900 => primary600.withValues(alpha: 0.15);

  @override
  Color get primary950 => primary600.withValues(alpha: 0.15);
}
