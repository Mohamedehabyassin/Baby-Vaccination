import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GeminiAINurseSection extends StatelessWidget {
  const GeminiAINurseSection({super.key, this.advice});

  final String? advice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: currentTheme.primary500.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(Dimensions.radius24),
        border: Border.all(
          color: currentTheme.primary500.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: currentTheme.primary500.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    'assets/images/ai_nurse.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'TinyShield AI Nurse',
                    style: CustomTextStyle.labelLarge.copyWith(
                      color: currentTheme.primary500,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  CustomText(
                    text: 'ALWAYS-ON ASSISTANCE',
                    style: CustomTextStyle.labelSmall.copyWith(
                      color: currentTheme.onSurface.withValues(alpha: 0.5),
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(Dimensions.radius16),
            ),
            child: CustomText(
              text:
                  advice ??
                  "Ask me any question about your child's vaccination! I'm here to help you navigate through our health journal with confidence.",
              style: CustomTextStyle.bodySmall.copyWith(
                color: currentTheme.onSurface.withValues(alpha: 0.8),
                height: 1.5,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () => context.push(AppRoutes.llmChat),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: currentTheme.primary500,
                borderRadius: BorderRadius.circular(Dimensions.radius12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.auto_awesome, color: Colors.white, size: 14),
                  SizedBox(width: 8.w),
                  CustomText(
                    text: 'Ask a Question',
                    style: CustomTextStyle.labelMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
