import 'package:baby_vaccination/core/domain/extensions/string_extension.dart';
import 'package:flutter/material.dart';

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

            style: style,
          )
        : SizedBox.shrink();
  }
}
