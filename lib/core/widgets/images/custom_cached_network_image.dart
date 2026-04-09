import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
  });
  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: imageUrl.isValid
          ? CachedNetworkImage(
              imageUrl: imageUrl!,
              width: width,
              height: height,
              fadeInDuration: const Duration(seconds: 1),
              fadeInCurve: Curves.bounceIn,
              filterQuality: FilterQuality.high,
              fit: fit ?? BoxFit.cover,
              placeholderFadeInDuration: const Duration(seconds: 1),
              placeholder: (context, url) {
                return const CircularProgressIndicator.adaptive();
              },
              errorWidget: (context, url, error) => Container(
                width: width ?? 40.w,
                height: height ?? 40.h,
                color: currentTheme.neutral300,
              ),
            )
          : Container(
              width: width ?? 40.w,
              height: height ?? 40.h,
              color: currentTheme.neutral300,
            ),
    );
  }
}
