import 'package:baby_vaccination/core/domain/injection/injection.dart';
import 'package:baby_vaccination/core/presentation/localization/cubit/localization_cubit.dart';
import 'package:baby_vaccination/core/presentation/routing/custom_router.dart';
import 'package:baby_vaccination/core/presentation/theme/cubit/theme_cubit.dart';
import 'package:baby_vaccination/core/presentation/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<LocalizationCubit>()),
            BlocProvider(create: (context) => getIt<ThemeCubit>()),
          ],

          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,

            //! Scroll Behavior
            scrollBehavior: ScrollConfiguration.of(
              context,
            ).copyWith(physics: const BouncingScrollPhysics()),

            //! Localization
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            locale: getIt<LocalizationCubit>().applicationLocale,
            supportedLocales: AppLocalizations.supportedLocales,
            //! Theming
            themeMode: getIt<ThemeCubit>().themeMode,
            theme: getIt<ThemeCubit>().lightThemeData,
            darkTheme: getIt<ThemeCubit>().darkThemeData,
            //! Router
            routerConfig: CustomRouter.router,
          ),
        );
      },
    );
  }
}
