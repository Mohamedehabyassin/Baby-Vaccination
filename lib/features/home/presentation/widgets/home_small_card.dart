import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSmallCard extends StatelessWidget {
  const HomeSmallCard({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.textColor,
    this.iconColor,
  });

  final Color backgroundColor;
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(Dimensions.radius24),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: iconColor ?? currentTheme.primary500, size: 32.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: subtitle,
                style: CustomTextStyle.labelMedium.copyWith(
                  color: (textColor ?? currentTheme.onSurface).withValues(
                    alpha: 0.6,
                  ),
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 4.h),
              CustomText(
                text: title,
                style: CustomTextStyle.labelLarge.copyWith(
                  color: textColor ?? currentTheme.onSurface,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
