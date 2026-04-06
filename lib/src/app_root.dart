import 'package:baby_vaccination/core/di/injection.dart';
import 'package:baby_vaccination/core/localization/bloc/localization_bloc.dart';
import 'package:baby_vaccination/core/localization/gen/app_localizations.dart';
import 'package:baby_vaccination/core/routing/custom_router.dart';
import 'package:baby_vaccination/core/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<LocalizationBloc>()
                    ..add(const FetchCachedLocalizationEvent()),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<ThemeBloc>()..add(const FetchCachedThemeEvent()),
            ),
          ],

          child: BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (context, localizationState) {
              return BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, themeState) {
                  final localizationBloc = context.read<LocalizationBloc>();
                  final themeBloc = context.read<ThemeBloc>();
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,

                    //! Scroll Behavior
                    scrollBehavior: ScrollConfiguration.of(
                      context,
                    ).copyWith(physics: const BouncingScrollPhysics()),

                    //! Localization
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    locale: localizationBloc.applicationLocale,
                    supportedLocales: AppLocalizations.supportedLocales,
                    //! Theming
                    themeMode: themeBloc.themeMode,
                    theme: themeBloc.lightThemeData,
                    darkTheme: themeBloc.darkThemeData,
                    //! Router
                    routerConfig: CustomRouter.router,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
