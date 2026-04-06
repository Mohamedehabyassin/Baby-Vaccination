import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';

class CustomTextStyle {
  CustomTextStyle._();

  //! Display (Massive, editorial, joyful)
  static final TextStyle displayLarge = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 48.sp,
    fontWeight: FontWeight.w800,
    fontFamily: AppStrings.nunito,
    height: 1.2,
  );

  static final TextStyle displayMedium = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.2,
  );

  //! Headlines (Section Titles)
  static final TextStyle h1Bold = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.4,
  );

  static final TextStyle h2Bold = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.4,
  );

  static final TextStyle h3Bold = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.4,
  );

  static final TextStyle h4Bold = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.4,
  );

  //! Body (Plus Jakarta Sans, high line height for airiness)
  static final TextStyle bodyLarge = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.6,
  );

  static final TextStyle bodyMedium = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.6,
  );

  static final TextStyle bodySmall = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.6,
  );

  //! Labels (Functional, sophisticated, tracked out)
  static final TextStyle labelLarge = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    fontFamily: AppStrings.nunito,
    textBaseline: TextBaseline.alphabetic,
  );

  static final TextStyle labelMedium = TextStyle(
    color: currentTheme.onSurface,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    fontFamily: AppStrings.nunito,
    textBaseline: TextBaseline.alphabetic,
  );

  //! Compatibility Aliases for existing components
  static TextStyle get h1Medium => h1Bold.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get h1Regular =>
      h1Bold.copyWith(fontWeight: FontWeight.w400);
  static TextStyle get h1Light => h1Bold.copyWith(fontWeight: FontWeight.w300);

  static TextStyle get h2Medium => h2Bold.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get h2Regular =>
      h2Bold.copyWith(fontWeight: FontWeight.w400);

  static TextStyle get h3Medium => h3Bold.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get h3Regular =>
      h3Bold.copyWith(fontWeight: FontWeight.w400);

  static TextStyle get h4Medium => h4Bold.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get h4Regular =>
      h4Bold.copyWith(fontWeight: FontWeight.w400);

  static TextStyle get emphasizedBold =>
      bodyLarge.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get emphasizedMedium =>
      bodyLarge.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get emphasizedRegular => bodyLarge;

  static TextStyle get bodyBaseBold =>
      bodyMedium.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get bodyBaseMedium =>
      bodyMedium.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get bodyBaseRegular => bodyMedium;

  static TextStyle get mediumElementsBold =>
      bodySmall.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get mediumElementsMedium =>
      bodySmall.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get mediumElementsRegular => bodySmall;

  static TextStyle get secondaryBold =>
      bodySmall.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get secondaryMedium =>
      bodySmall.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get secondaryRegular => bodySmall;
  static TextStyle get secondaryLight =>
      bodySmall.copyWith(fontWeight: FontWeight.w300);

  static TextStyle get finePrintBold =>
      labelMedium.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get finePrintRegular => labelMedium;
}
