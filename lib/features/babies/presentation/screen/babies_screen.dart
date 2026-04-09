import 'package:baby_vaccination/core/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';

class BabiesScreen extends StatelessWidget {
  const BabiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('BabiesScreen build');
    return Scaffold(
      body: Center(
        child: CustomText(
          text: "Babies Screen",
          style: CustomTextStyle.mediumElementsBold,
        ),
      ),
    );
  }
}
