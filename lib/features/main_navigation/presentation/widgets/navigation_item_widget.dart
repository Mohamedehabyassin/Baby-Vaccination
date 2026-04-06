import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationItemWidget extends StatelessWidget {
  const NavigationItemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
  });
  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 24.sp,
      color: isSelected ? currentTheme.primary600 : currentTheme.primary300,
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.radius30),
      ),
      padding: EdgeInsets.all(Dimensions.padding6),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24.sp,
            color: isSelected ? currentTheme.primary500 : currentTheme.darkText,
          ),
          CustomText(text: title, style: CustomTextStyle.mediumElementsBold),
        ],
      ),
    );
  }
}
