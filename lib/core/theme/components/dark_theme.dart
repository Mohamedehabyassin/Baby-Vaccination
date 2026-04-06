import 'package:flutter/material.dart';
import '../model/theme_base.dart';

class DarkTheme implements ThemeBase {
  @override
  String get name => "darkTheme";

  //! --- Core Brand & Primary Palette ---
  @override
  Color get primary => const Color(0xffb1dfc3); // Brighter Sage for dark mode
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
