import 'package:baby_vaccination/core/data/connectivity/connectivity_manger.dart';
import 'package:baby_vaccination/core/domain/extensions/get_it_extension.dart';
import 'package:baby_vaccination/core/presentation/theme/cubit/theme_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../presentation/localization/cubit/localization_cubit.dart';

final GetIt di = GetIt.instance;

Future<void> injectCommonModules() async {
  //! Register common modules
  di.registerLazySingletonSafely<ThemeCubit>(() => ThemeCubit());
  di.registerLazySingletonSafely<LocalizationCubit>(() => LocalizationCubit());

  //! Register ConnectivityInfo and DioHelper
  di.registerLazySingletonSafely<ConnectivityManager>(
    () => ConnectivityManager(),
  );
}
