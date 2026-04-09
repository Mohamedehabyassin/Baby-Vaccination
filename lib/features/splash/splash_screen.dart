import 'package:baby_vaccination/core/di/injection.dart';
import 'package:baby_vaccination/core/gen/assets.gen.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/bloc/navigation_bloc.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/screen/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart' as flare;
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget animated = flare.SplashScreen.navigate(
      name: Assets.flare.doctor,
      next: (context) {
        return BlocProvider(
          create: (_) => getIt<NavigationBloc>(),
          child: const MainNavigationScreen(),
        );
      },

      until: () => Future.delayed(const Duration(seconds: 3)),
      startAnimation: "tap",
    );
    return Scaffold(body: animated);
  }
}
