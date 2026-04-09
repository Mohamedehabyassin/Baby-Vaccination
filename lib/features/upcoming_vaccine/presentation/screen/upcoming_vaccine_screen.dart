import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/features/upcoming_vaccine/presentation/widgets/gemini_ai_nurse_section.dart';
import 'package:baby_vaccination/features/upcoming_vaccine/presentation/widgets/upcoming_vaccine_card.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/components/theme_factory.dart';
import '../../../../core/theme/styles/custom_text_style.dart';
import '../../../../core/widgets/text/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingVaccineScreen extends StatelessWidget {
  const UpcomingVaccineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme.surface,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            AppSpacing.vertical48(),
            Center(
              child: CustomText(
                text: 'Upcoming Vaccine Screen',
                style: CustomTextStyle.h3Bold.copyWith(
                  color: currentTheme.primary500,
                ),
              ),
            ),
            AppSpacing.vertical32(),
            const UpcomingVaccineCard(),
            AppSpacing.vertical32(),
            const GeminiAINurseSection(),
            AppSpacing.vertical120(), // Spacing for navigation
          ],
        ),
      ),
    );
  }
}
