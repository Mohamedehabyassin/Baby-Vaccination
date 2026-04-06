import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';
import 'package:baby_vaccination/core/routing/custom_router.dart';
import 'package:baby_vaccination/core/theme/sizes/application_size.dart';
import 'package:baby_vaccination/core/theme/sizes/dimension_manager.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomToastMessage {
  static OverlayEntry? _currentOverlayEntry;

  static void _removeCurrentToast() {
    try {
      if (_currentOverlayEntry?.mounted == true) {
        _currentOverlayEntry?.remove();
      }
    } catch (e) {
      debugPrint('Toast removal error: $e');
    } finally {
      _currentOverlayEntry = null;
    }
  }
  // static final CustomToastMessage _singleton = CustomToastMessage._internal();

  // CustomToastMessage._internal();

  // factory CustomToastMessage() {
  //   return _singleton;
  // }

  static void show({
    BuildContext? context,
    String? label,
    String? message,
    int? seconds = 5,
    ToastType type = ToastType.informative,
    Function()? goTo,
  }) {
    if (!(message.isValid)) return;

    // Remove any existing toast first
    _removeCurrentToast();

    // Use provided context or fallback to RouteHelper.context
    final toastContext = context ?? CustomRouter.context;

    // Safety check for valid overlay
    final navigatorState = Navigator.maybeOf(toastContext);
    if (navigatorState == null) return;

    final overlay = navigatorState.overlay;
    if (overlay == null) return;

    _currentOverlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        // bottom: MediaQuery.of(context).padding.bottom + 30,
        bottom: Dimensions.padding30,
        left: Dimensions.padding20,
        right: Dimensions.padding20,
        child: Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {
              _removeCurrentToast();
            },
            child: Container(
              padding: EdgeInsets.all(Dimensions.padding20),
              decoration: BoxDecoration(
                color: getColor(type),
                border: Border.all(color: getBorderColor(type)),

                // gradient: getGradientColor(type),
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 24, width: 24, child: getIcon(type)),
                  SpaceWidth12(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (label.isValid) ...[
                          CustomText(
                            text: label,
                            style: CustomTextStyle.bodyBaseBold,
                          ),
                          SpaceHeight4(),
                        ],
                        CustomText(
                          text: message,
                          style: CustomTextStyle.mediumElementsRegular,
                        ),
                      ],
                    ),
                  ),
                  SpaceWidth12(),
                  // if (goTo != null)
                  //   GestureDetector(
                  //     onTap: goTo,
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(
                  //         vertical: Dimensions.padding6,
                  //         horizontal: Dimensions.padding16,
                  //       ),
                  //       child: CustomText(
                  //         text: context.loc.goTo,
                  //         style: CustomTextStyle.secondaryBold,
                  //       ),
                  //     ),
                  //   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    // Insert the overlay entry
    overlay.insert(_currentOverlayEntry!);

    // Force Flutter to redraw the overlay immediately
    WidgetsBinding.instance.scheduleFrame();

    Future.delayed(Duration(seconds: seconds ?? 5), () {
      _removeCurrentToast();
    });
  }

  // String getLabel(ToastType type) {
  //   switch (type) {
  //     case ToastType.success:
  //       return "Successful";
  //     case ToastType.error:
  //       return "error";
  //     case ToastType.warning:
  //       return "warning";
  //     case ToastType.informative:
  //       return "informative";
  //   }
}

Color getColor(ToastType type) {
  switch (type) {
    case ToastType.success:
      return const Color(0xFFF6FFF9);
    case ToastType.error:
      return const Color(0xFFFFF5F3);
    case ToastType.warning:
      return const Color(0xFFFFF8EC);
    case ToastType.informative:
      return const Color(0xFFF5F9FF);
  }
}

Color getBorderColor(ToastType type) {
  switch (type) {
    case ToastType.success:
      return const Color(0xFF48C1B5);
    case ToastType.error:
      return const Color(0xFFF4B0A1);
    case ToastType.warning:
      return const Color(0xFFF7D9A4);
    case ToastType.informative:
      return const Color(0xFF9DC0EE);
  }
}

// SvgComponent getIcon(ToastType type) {
//   switch (type) {
//     case ToastType.success:
//       return SvgComponent(path: AppIcons.success, height: 24, width: 24);
//     case ToastType.error:
//       return SvgComponent(path: AppIcons.error, height: 24, width: 24);
//     case ToastType.warning:
//       return SvgComponent(path: AppIcons.warning, height: 24, width: 24);
//     case ToastType.informative:
//       return SvgComponent(path: AppIcons.informative, height: 24, width: 24);
//   }
// }
