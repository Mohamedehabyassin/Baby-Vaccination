import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class BabyItemWidget extends StatelessWidget {
  const BabyItemWidget({super.key, required this.baby, this.onTap});

  final BabyEntity baby;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: currentTheme.neutral100,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(12),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: currentTheme.primary100,
              child: Icon(
                baby.gender.toLowerCase() == 'boy'
                    ? Icons.child_care
                    : Icons.face,
                color: currentTheme.primary500,
                size: 30.r,
              ),
            ),
            AppSpacing.horizontal16(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: baby.fullName,
                    style: CustomTextStyle.mediumElementsBold,
                  ),
                  AppSpacing.vertical4(),
                  CustomText(
                    text: '${baby.gender} | ${baby.bloodType}',
                    style: CustomTextStyle.mediumElementsMedium.copyWith(
                      color: currentTheme.neutral500,
                    ),
                  ),
                  AppSpacing.vertical4(),
                  CustomText(
                    text: DateFormat('MMM d, yyyy').format(baby.dateOfBirth),
                    style: CustomTextStyle.mediumElementsMedium.copyWith(
                      color: currentTheme.primary500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: currentTheme.neutral400),
          ],
        ),
      ),
    );
  }
}
