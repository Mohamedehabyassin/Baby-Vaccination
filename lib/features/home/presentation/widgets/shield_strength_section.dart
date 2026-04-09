import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShieldStrengthSection extends StatelessWidget {
  const ShieldStrengthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: currentTheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(Dimensions.radius30),
      ),
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: context.loc.shieldStrength,
                      style: CustomTextStyle.h4Bold.copyWith(
                        color: currentTheme.onSurface,
                      ),
                    ),
                    CustomText(
                      text: context.loc.milestonesCompleted(4, 12),
                      style: CustomTextStyle.bodySmall.copyWith(
                        color: currentTheme.onSurface.withValues(alpha: 0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(
                text: '33%',
                style: CustomTextStyle.displayLarge.copyWith(
                  color: currentTheme.primary500,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          // No stack, so I'll use a LinearProgressIndicator or simple Container
          Container(
            height: 4.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: currentTheme.surfaceContainerHighest.withValues(
                alpha: 0.5,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: 0.33,
              child: Container(
                height: 4.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      currentTheme.primary500,
                      currentTheme.primaryFixedDim,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(Dimensions.radius16),
            ),
            child: Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    color: currentTheme.secondaryContainer.withValues(
                      alpha: 0.4,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.verified_user,
                    color: Color(0xFF795900),
                    size: 20,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: CustomTextStyle.bodySmall.copyWith(
                        color: currentTheme.onSurface.withValues(alpha: 0.7),
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(text: context.loc.protectedAgainst('Liam')),
                        TextSpan(
                          text: context.loc.protectedDiseases,
                          style: TextStyle(
                            color: currentTheme.onSurface,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(text: context.loc.diseasesSuffix),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
