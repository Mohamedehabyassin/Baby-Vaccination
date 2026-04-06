import 'package:flutter/material.dart';

import 'package:baby_vaccination/core/theme/components/theme_factory.dart';

class CustomBoxShadows {
  static BoxShadow dropShadow = BoxShadow(
    color: currentTheme.leafGreen.withValues(alpha: 0.2),
    blurRadius: 4,
    offset: const Offset(0, 4),
  );
}
