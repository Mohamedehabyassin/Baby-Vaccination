import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';
import 'package:baby_vaccination/core/localization/cubit/localization_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.style,
    this.align = TextAlign.start,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 20,
  });
  final String? text;
  final TextStyle style;
  final TextAlign align;
  final TextOverflow overflow;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return text.isValid
        ? Text(
            text!,
            maxLines: maxLines,
            textAlign: align,
            overflow: overflow,
            style: style.copyWith(
              fontFamily:
                  context.read<LocalizationCubit>().applicationLocale ==
                      Locale(AppStrings.arabic)
                  ? AppStrings.beiruti
                  : AppStrings.nunito,
            ),
          )
        : SizedBox.shrink();
  }
}
