import 'package:baby_vaccination/core/di/injection.config.dart';
import 'package:baby_vaccination/core/di/injection.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:baby_vaccination/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:baby_vaccination/features/auth/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:baby_vaccination/features/auth/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/bloc/navigation_bloc.dart';
import 'package:baby_vaccination/features/main_navigation/presentation/screen/main_navigation_screen.dart';
import 'package:baby_vaccination/features/splash/splash_screen.dart';
import 'package:baby_vaccination/features/llm_chat/presentation/screen/llm_chat_screen.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/screens/manage_baby_screen.dart';
import 'package:baby_vaccination/features/manage_baby/presentation/bloc/manage_baby_bloc.dart';
import 'package:baby_vaccination/features/baby_details/presentation/screens/baby_details_screen.dart';
import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_bloc.dart';
import 'package:baby_vaccination/features/baby_details/presentation/bloc/baby_details_event.dart';
import 'package:baby_vaccination/features/upcoming_vaccine/presentation/screen/upcoming_vaccine_screen.dart';
import 'package:baby_vaccination/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.signIn,
        builder: (context, state) {
          getIt.initSignInScope();
          return BlocProvider(
            create: (_) => getIt<SignInBloc>(),
            child: const SignInScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) {
          getIt.initSignUpScope();
          return BlocProvider(
            create: (_) => getIt<SignUpBloc>(),
            child: const SignUpScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.mainNav,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt<NavigationBloc>(),
          child: const MainNavigationScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.llmChat,
        builder: (context, state) => const LlmChatScreen(),
      ),
      GoRoute(
        path: AppRoutes.manageBaby,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt<ManageBabyBloc>(),
          child: const ManageBabyScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.babyDetails,
        builder: (context, state) => BlocProvider(
          create: (_) =>
              getIt<BabyDetailsBloc>()..add(const BabyDetailsEvent.getBabies()),
          child: const BabyDetailsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.upcomingVaccine,
        builder: (context, state) => const UpcomingVaccineScreen(),
      ),
    ],
  );
}
