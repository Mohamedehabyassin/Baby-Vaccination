// ignore_for_file: must_be_immutable

import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/sizes/application_size.dart';
import '../../theme/components/theme_factory.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.label,
    this.hint,
    this.helperText,
    this.controller,
    this.focusNode,
    this.counterText,
    this.fillColor,
    this.errorText,
    this.validate,
    this.keyboardType = TextInputType.text,
    this.title,
    this.colorBorder,
    this.isObscureText = false,
    this.maxLength,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.textInputAction,
    this.readOnly,
    this.onChanged,
    this.autofillHints,
    this.onEditingCompleted,
    this.textDirection,
    this.padding,
    this.enabled,
  });

  final String label;
  final String? hint;
  final String? helperText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? title;
  final Color? colorBorder;
  final TextInputAction? textInputAction;
  final bool isObscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  Function()? onTap;
  Function(String?)? onChanged;
  final Function()? onEditingCompleted;
  String? Function(String?)? validate;
  Iterable<String>? autofillHints;
  Color? fillColor;
  bool? readOnly;
  String? errorText;
  int? maxLength;
  String? counterText;
  TextDirection? textDirection;
  EdgeInsets? padding;
  bool? enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isValid) ...[
          CustomText(text: label, style: CustomTextStyle.mediumElementsBold),
          AppSpacing.vertical6(),
        ],
        TextFormField(
          textDirection: textDirection,
          // maxLength: maxLength,
          controller: controller,
          style: CustomTextStyle.secondaryMedium,
          focusNode: focusNode,
          obscureText: isObscureText,
          maxLines: maxLength,
          // autofillHints: autofillHints,
          enabled: enabled ?? true,
          onChanged: onChanged,
          readOnly: readOnly ?? false,
          textInputAction: textInputAction ?? TextInputAction.next,
          onEditingComplete: onEditingCompleted,
          keyboardType: keyboardType,
          cursorColor: currentTheme.primary,
          validator: validate,
          onTap: onTap,
          decoration: _buildDecoration(),
        ),
      ],
    );
  }

  InputDecoration _buildDecoration() {
    return InputDecoration(
      counterText: counterText,
      contentPadding:
          padding ??
          EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: ScreenUtil().screenWidth > 500 ? 16.sp : 0,
          ),
      errorText: errorText,
      errorStyle: CustomTextStyle.secondaryLight.copyWith(
        color: currentTheme.error,
      ),
      errorMaxLines: 2,
      helperText: helperText,
      hintText: hint,
      prefixIcon: prefixIcon != null
          ? Padding(
              padding: EdgeInsets.all(Dimensions.padding10),
              child: prefixIcon,
            )
          : null,
      suffixIcon: suffixIcon != null
          ? Padding(
              padding: EdgeInsets.all(Dimensions.padding10),
              child: suffixIcon,
            )
          : null,
      alignLabelWithHint: true,
      // contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      fillColor: fillColor ?? currentTheme.surfaceContainerLowest,
      filled: true,
      hintStyle: CustomTextStyle.secondaryMedium.copyWith(
        color: currentTheme.outlineVariant,
      ),
      helperStyle: CustomTextStyle.secondaryBold,
      border: InputBorder.none,
      focusColor: currentTheme.primary,
      focusedBorder: _buildBorder(colorBorder ?? currentTheme.primary),
      focusedErrorBorder: _buildBorder(colorBorder ?? currentTheme.error),
      enabledBorder: _buildBorder(colorBorder ?? currentTheme.primary500),
      disabledBorder: _buildBorder(colorBorder ?? currentTheme.neutral300),
      errorBorder: _buildBorder(currentTheme.error),
    );
  }

  OutlineInputBorder _buildBorder(Color colorBorder) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimensions.radius8),
      borderSide: BorderSide(color: colorBorder),
    );
  }
}
