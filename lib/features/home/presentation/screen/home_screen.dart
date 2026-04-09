import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:flutter/material.dart';
import '../widgets/home_header.dart';
import '../widgets/home_child_chip.dart';
import '../widgets/quick_actions/quick_actions_grid.dart';
import '../widgets/shield_strength_section.dart';
import '../widgets/home_resource_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeScreen build');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.vertical48(),
            const HomeHeader(),
            AppSpacing.vertical16(),
            const HomeChildChip(),
            AppSpacing.vertical4(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppSpacing.vertical12(),
                    const QuickActionsGrid(),
                    AppSpacing.vertical24(),
                    const ShieldStrengthSection(),
                    AppSpacing.vertical24(),
                    const HomeResourceSection(),
                    AppSpacing.vertical48(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
