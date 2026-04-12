import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 24.sp,
        color: currentTheme.neutral950,
      ),
    );
  }
}
