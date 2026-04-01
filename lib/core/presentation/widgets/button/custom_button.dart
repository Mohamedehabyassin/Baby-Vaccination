import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/presentation/theme/sizes/dimension_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;
  final double height;
  final double? width;
  final double elevation;
  final EdgeInsets? padding;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.height = 44,
    this.elevation = 0,
    this.width,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? ScreenUtil().screenWidth, height.h),
        elevation: elevation,
        disabledForegroundColor: currentTheme.neutral400,
        disabledBackgroundColor: currentTheme.neutral400,

        padding: padding,
        backgroundColor: backgroundColor ?? currentTheme.primary500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius8),
          side: BorderSide(
            color: onPressed == null
                ? currentTheme.neutral400
                : borderColor ?? backgroundColor ?? currentTheme.primary500,
          ),
        ),
      ),
      child: child,
    );
  }
}
