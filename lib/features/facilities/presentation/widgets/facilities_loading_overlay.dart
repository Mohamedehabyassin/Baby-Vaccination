import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:flutter/material.dart';

class FacilitiesLoadingOverlay extends StatelessWidget {
  const FacilitiesLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentTheme.surface,
      child: Center(
        child: CircularProgressIndicator(color: currentTheme.primary500),
      ),
    );
  }
}
