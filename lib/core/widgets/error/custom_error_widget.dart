import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.failure, this.retry});
  final Failure failure;
  final VoidCallback? retry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.padding24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.nearby_error_outlined,
            size: 48.sp,
            color: currentTheme.error,
          ),
          AppSpacing.vertical16(),
          CustomText(
            text: failure.message ?? context.loc.unknownError,
            style: CustomTextStyle.emphasizedMedium,
          ),
          if (retry != null) ...[
            AppSpacing.vertical16(),
            TextButton(
              onPressed: retry,
              child: CustomText(
                text: context.loc.retry,
                style: CustomTextStyle.emphasizedBold.copyWith(
                  color: currentTheme.primary500,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
