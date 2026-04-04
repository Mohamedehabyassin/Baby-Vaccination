import 'package:baby_vaccination/core/domain/injection/injection.dart';
import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/core/presentation/theme/components/theme_factory.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart' as flare;
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  final animationType = "tap";

  @override
  Widget build(BuildContext context) {
    Widget animated = flare.SplashScreen.navigate(
      name: Assets.flare.doctor,
      next: (context) {
        return BlocProvider(
          create: (_) => getIt<SignInBloc>(),
          child: SignInSccreen(),
        );
      },

      until: () => Future.delayed(Duration(seconds: 5)),
      startAnimation: animationType,
      backgroundColor: currentTheme.neutral200,
    );
    return Scaffold(backgroundColor: currentTheme.neutral200, body: animated);
  }
}
