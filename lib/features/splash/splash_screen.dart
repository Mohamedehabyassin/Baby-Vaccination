import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart' as flare;

class SplashScreen extends StatelessWidget {
  final animationType = "tap";

  @override
  Widget build(BuildContext context) {
    Widget animated = flare.SplashScreen.navigate(
      name: Assets.flare.doctor,
      next: (context) => SignIn(),
      until: () => Future.delayed(Duration(seconds: 5)),
      startAnimation: animationType,
      backgroundColor: Colors.black,
    );
    return Scaffold(backgroundColor: currentTheme.neutral200, body: animated);
  }
}
