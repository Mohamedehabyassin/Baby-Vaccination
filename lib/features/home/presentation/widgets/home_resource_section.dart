import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import './home_small_card.dart';

class HomeResourceSection extends StatelessWidget {
  const HomeResourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeSmallCard(
            backgroundColor: currentTheme.surfaceContainerLow,
            icon: Icons.menu_book_outlined,
            subtitle: context.loc.resources,
            title: context.loc.sideEffectsGuide,
          ),
        ),
        AppSpacing.vertical16(),
        Expanded(
          child: HomeSmallCard(
            backgroundColor: currentTheme.primary500.withValues(alpha: 0.15),
            icon: Icons.support_agent_outlined,
            subtitle: context.loc.assistance,
            title: context.loc.talkToNurse,
            textColor: currentTheme.onSurface,
            iconColor: currentTheme.primary500,
          ),
        ),
      ],
    );
  }
}
