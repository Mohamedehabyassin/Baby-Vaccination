import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:baby_vaccination/core/domain/constants/strings.dart';
import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';

class CustomTextStyle {
  CustomTextStyle._();
  //! HeroHeadlines
  static final TextStyle heroHeadlinesBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 56.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle heroHeadlinesMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 56.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle heroHeadlinesRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 56.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );

  static final TextStyle heroHeadlinesLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 56.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );

  //! Page Titles
  static final TextStyle pageTitleBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 46.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,

    height: 1.5,
  );
  static final TextStyle pageTitleMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 46.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle pageTitleRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 46.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle pageTitleLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 46.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  //! Headings
  static final TextStyle h1Bold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 38.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h1Medium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 38.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h1Regular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 38.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h1Light = TextStyle(
    color: currentTheme.darkText,
    fontSize: 38.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  //! Subheadings
  static final TextStyle h2Bold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h2Medium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h2Regular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h2Light = TextStyle(
    color: currentTheme.darkText,
    fontSize: 32.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  //! h3 headings
  static final TextStyle h3Bold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h3Medium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h3Regular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h3Light = TextStyle(
    color: currentTheme.darkText,
    fontSize: 28.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );

  //! h4 headings
  static final TextStyle h4Bold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );

  static final TextStyle h4Medium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h4Regular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );
  static final TextStyle h4Light = TextStyle(
    color: currentTheme.darkText,
    fontSize: 24.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.nunito,
    height: 1.5,
  );

  //! Emphasized
  static final TextStyle emphasizedBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle emphasizedMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle emphasizedRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle emphasizedLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  //! Body Text
  static final TextStyle bodyBaseBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle bodyBaseMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle bodyBaseRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle bodyBaseLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  //! Medium Elements
  static final TextStyle mediumElementsBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle mediumElementsMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle mediumElementsRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle mediumElementsLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  //! Secondary
  static final TextStyle secondaryBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle secondaryMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle secondaryRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle secondaryLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  //! Fine Print
  static final TextStyle finePrintBold = TextStyle(
    color: currentTheme.darkText,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle finePrintMedium = TextStyle(
    color: currentTheme.darkText,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle finePrintRegular = TextStyle(
    color: currentTheme.darkText,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
  static final TextStyle finePrintLight = TextStyle(
    color: currentTheme.darkText,
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppStrings.beiruti,
    height: 1.5,
  );
}
