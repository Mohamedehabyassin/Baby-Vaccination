import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/images/custom_cached_network_image.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCachedNetworkImage(
          width: 40.w,
          height: 40.h,
          borderRadius: Dimensions.radius30,
          imageUrl:
              'https://lh3.googleusercontent.com/aida-public/AB6AXuCbhajuTqL9UoEAOjBBmR22hohhLeWor5CJJtVGk-ISEbY-PzoZWERJUlf-XaOwEBuNCZhH3r03jQLBTMQXXGEBrVRLQ6B0me7H833VXRnhRVzEnk7itsffzZFN6_yoOezoBXjbFO3YKD1EJ8tkUISpA-1yqhvABEYOimzs_Fn0Bv7zzYzAeuqeyXdeLEL9PjlItv1SgvY8bdG_ARYkW4tG856Du6mZshXD7MfC5eunjieuibJCcDLB51DCno_heeMAR5A2ExR18mA',
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.applicationTitle,
                style: CustomTextStyle.h3Bold.copyWith(
                  color: currentTheme.primary500,
                ),
              ),
              CustomText(
                text: context.loc.appSubtitle,
                style: CustomTextStyle.labelMedium.copyWith(
                  color: currentTheme.onSurface,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
            color: currentTheme.primary500,
            size: 24,
          ),
        ),
      ],
    );
  }
}
