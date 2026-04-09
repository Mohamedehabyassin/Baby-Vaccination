import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/button/custom_button.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingVaccineCard extends StatelessWidget {
  const UpcomingVaccineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        color: currentTheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        border: Border.all(
          color: currentTheme.outlineVariant.withValues(alpha: 0.05),
        ),
        boxShadow: [
          BoxShadow(
            color: currentTheme.primary500.withValues(alpha: 0.06),
            blurRadius: 32,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: currentTheme.secondaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: currentTheme.warning,
                      shape: BoxShape.circle,
                    ),
                  ),
                  AppSpacing.horizontal4(),
                  CustomText(
                    text: context.loc.upcoming,
                    style: CustomTextStyle.labelMedium.copyWith(
                      color: currentTheme.onSecondaryContainer,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical16(),
            CustomText(
              text: context.loc.upcomingVaccineTitle,
              style: CustomTextStyle.h4Bold.copyWith(
                color: currentTheme.onSurface,
                height: 1.2,
              ),
              maxLines: 2,
            ),
            AppSpacing.vertical12(),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: currentTheme.primary500,
                  size: 18.sp,
                ),
                AppSpacing.horizontal4(),
                CustomText(
                  text: context.loc.dueDate('October 24, 2024'),
                  style: CustomTextStyle.bodySmall.copyWith(
                    color: currentTheme.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical12(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {},
                    child: CustomText(
                      text: context.loc.viewDetails,
                      style: CustomTextStyle.labelLarge.copyWith(
                        color: currentTheme.surface,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Container(
                  width: 44.h,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius8),
                    border: Border.all(
                      color: currentTheme.outlineVariant.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Icon(
                    Icons.share_outlined,
                    color: currentTheme.primary500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
