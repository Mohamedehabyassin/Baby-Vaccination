import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'quick_action_button.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: context.loc.quickActions,
              style: CustomTextStyle.h4Bold.copyWith(
                color: currentTheme.onSurface,
              ),
            ),
            CustomText(
              text: context.loc.viewAll,
              style: CustomTextStyle.labelLarge.copyWith(
                color: currentTheme.primary500,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        AppSpacing.vertical8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: QuickActionButton(
                icon: Icons.add_moderator_outlined,
                label: context.loc.logVaccine,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: QuickActionButton(
                icon: Icons.person_add_outlined,
                label: context.loc.addChild,
                onTap: () {},
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: QuickActionButton(
                icon: Icons.medical_services_outlined,
                label: context.loc.findClinic,
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
