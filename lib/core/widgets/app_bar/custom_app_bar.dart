import 'dart:io';

import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/app_bar/widgets/custom_back_button.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.centerTitle,
    this.elevation,
    this.backgroundColor,
    this.useBack,
    this.actions = const [],
  });
  final String? title;
  final bool? centerTitle;
  final double? elevation;
  final Color? backgroundColor;
  final bool? useBack;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(text: title ?? '', style: CustomTextStyle.h4Bold),
      backgroundColor: backgroundColor ?? currentTheme.neutral100,
      elevation: elevation ?? 0,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle ?? true,
      leading: useBack == true
          ? const CustomBackButton()
          : const SizedBox.shrink(),
      actions: actions,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Platform.isIOS
            ? Brightness.light
            : Brightness.dark,
        systemStatusBarContrastEnforced: false,
        statusBarBrightness: Platform.isIOS
            ? Brightness.light
            : Brightness.dark,
        systemNavigationBarColor: currentTheme.neutral100,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarIconBrightness: Platform.isIOS
            ? Brightness.light
            : Brightness.dark,
      ),
    );
  }

  @override
  Size get preferredSize => Size(ScreenUtil().screenWidth, 56.h);
}
