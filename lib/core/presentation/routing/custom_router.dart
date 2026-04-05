import 'package:baby_vaccination/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:baby_vaccination/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRouter {
  CustomRouter._();
  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
  static BuildContext get context => _navigatorKey.currentContext!;
  static final GoRouter router = GoRouter(
    navigatorKey: _navigatorKey,
    redirect: (context, state) {
      return null;
    },
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: 'sign_in', builder: (context, state) => SignInScreen()),
    ],
  );
}
