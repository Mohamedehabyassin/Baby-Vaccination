import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: Dimensions.padding12,
          // left: Dimensions.padding8,
          right: Dimensions.padding16,
          bottom: Dimensions.padding12,
        ),
        child: Icon(Icons.arrow_back_ios, size: 24.sp),
      ),
    );
  }
}
