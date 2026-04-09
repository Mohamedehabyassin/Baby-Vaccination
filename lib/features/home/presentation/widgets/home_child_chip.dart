import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeChildChip extends StatelessWidget {
  const HomeChildChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: currentTheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        border: Border.all(
          color: currentTheme.outlineVariant.withValues(alpha: 0.15),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.child_care, color: currentTheme.primary500, size: 16.sp),
          SizedBox(width: 8.w),
          CustomText(
            // In a real app, this would be dynamic data.
            // For now, making it clear it's a field.
            text: 'Baby Liam - 5 months',
            style: CustomTextStyle.labelLarge.copyWith(
              color: currentTheme.onSurface.withValues(alpha: 0.8),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
