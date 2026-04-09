import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActionButton extends StatelessWidget {
  const QuickActionButton({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: currentTheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(Dimensions.radius24),
        ),
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: currentTheme.surfaceContainerLowest,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: currentTheme.primary500, size: 24.sp),
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: label,
              style: CustomTextStyle.labelMedium.copyWith(
                color: currentTheme.onSurface.withValues(alpha: 0.8),
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
              align: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
