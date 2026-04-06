import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgComponent extends StatelessWidget {
  const SvgComponent({
    super.key,
    required this.path,
    this.height = 16,
    this.width = 16,
    this.color,
    this.boxFit = BoxFit.contain,
  });
  final String path;
  final double height;
  final double width;
  final Color? color;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SvgPicture.asset(
        path,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
        height: height.h,
        width: width.w,
        fit: boxFit,
      ),
    );
  }
}
