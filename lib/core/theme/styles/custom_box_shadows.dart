import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';

class CustomBoxShadows {
  /// Ambient Shadow following the "Elevated Nursery" rules:
  /// - Color: onSecondaryContainer (#694b42) at 6% opacity
  /// - Blur: 40px to 60px
  /// - Spread: -5px
  static BoxShadow ambientShadow = BoxShadow(
    color: currentTheme.neutral300,
    blurRadius: 50,
    offset: const Offset(5, 10), // Subtle downward bias for depth
  );

  //! Compatibility Alias
  static BoxShadow get dropShadow => ambientShadow;
}
