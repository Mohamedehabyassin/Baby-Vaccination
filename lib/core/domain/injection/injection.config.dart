// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../features/auth/sign_in/data/data_sources/local/sign_in_local_data_source.dart'
    as _i12;
import '../../../features/auth/sign_in/data/data_sources/remote/sign_in_remote_data_source.dart'
    as _i656;
import '../../../features/auth/sign_in/data/repository/sign_in_repositary_impl.dart'
    as _i291;
import '../../../features/auth/sign_in/domain/repository/sign_in_repository.dart'
    as _i1054;
import '../../../features/auth/sign_in/domain/use_cases/sign_in_with_biometrics_use_case.dart'
    as _i509;
import '../../../features/auth/sign_in/domain/use_cases/sign_in_with_email_use_case.dart'
    as _i25;
import '../../../features/auth/sign_in/domain/use_cases/sign_in_with_google_use_case.dart'
    as _i830;
import '../../../features/auth/sign_in/presentation/bloc/sign_in_bloc.dart'
    as _i829;
import '../../../features/auth/sign_up/data/data_sources/remote/sign_up_remote_data_source.dart'
    as _i128;
import '../../../features/auth/sign_up/data/repository/sign_up_repository_impl.dart'
    as _i984;
import '../../../features/auth/sign_up/domain/repository/sign_up_repository.dart'
    as _i1050;
import '../../../features/auth/sign_up/domain/use_cases/sign_up_with_email_use_case.dart'
    as _i561;
import '../../../features/auth/sign_up/domain/use_cases/sign_up_with_google_use_case.dart'
    as _i112;
import '../../../features/auth/sign_up/presentation/bloc/sign_up_bloc.dart'
    as _i620;
import '../../data/connectivity/connectivity_manger.dart' as _i961;
import '../../data/network/firebase/firebase_auth_manger.dart' as _i730;
import '../../data/network/firebase/firestore_manager.dart' as _i110;
import '../../presentation/localization/cubit/localization_cubit.dart' as _i61;
import '../../presentation/theme/cubit/theme_cubit.dart' as _i550;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i730.FirebaseAuthManger>(
      () => _i730.FirebaseAuthManger(),
    );
    gh.lazySingleton<_i61.LocalizationCubit>(() => _i61.LocalizationCubit());
    gh.lazySingleton<_i550.ThemeCubit>(() => _i550.ThemeCubit());
    gh.lazySingleton<_i110.FirebaseManager>(
      () => _i110.FirebaseManager(
        gh<_i961.ConnectivityManager>(),
        gh<_i730.FirebaseAuthManger>(),
      ),
    );
    return this;
  }

  // initializes the registration of signIn-scope dependencies inside of GetIt
  _i174.GetIt initSignInScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'signIn',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i12.SignInLocalDataSource>(
          () => _i12.SignInLocalDataSourceImpl(),
        );
        gh.lazySingleton<_i656.SignInRemoteDataSource>(
          () =>
              _i656.SignInRemoteDataSourceImpl(gh<_i730.FirebaseAuthManger>()),
        );
        gh.lazySingleton<_i1054.SignInRepository>(
          () => _i291.SignInRepositoryImpl(
            gh<_i12.SignInLocalDataSource>(),
            gh<_i656.SignInRemoteDataSource>(),
          ),
        );
        gh.lazySingleton<_i509.SignInWithBiometricsUseCase>(
          () =>
              _i509.SignInWithBiometricsUseCase(gh<_i1054.SignInRepository>()),
        );
        gh.lazySingleton<_i25.SignInWithEmailAndPasswordUseCase>(
          () => _i25.SignInWithEmailAndPasswordUseCase(
            gh<_i1054.SignInRepository>(),
          ),
        );
        gh.lazySingleton<_i830.SignInWithGoogleUseCase>(
          () => _i830.SignInWithGoogleUseCase(gh<_i1054.SignInRepository>()),
        );
        gh.lazySingleton<_i829.SignInBloc>(
          () => _i829.SignInBloc(
            gh<_i25.SignInWithEmailAndPasswordUseCase>(),
            gh<_i830.SignInWithGoogleUseCase>(),
            gh<_i509.SignInWithBiometricsUseCase>(),
          ),
        );
      },
    );
  }

  // initializes the registration of signUp-scope dependencies inside of GetIt
  _i174.GetIt initSignUpScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'signUp',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i128.SignUpRemoteDataSource>(
          () =>
              _i128.SignUpRemoteDataSourceImpl(gh<_i730.FirebaseAuthManger>()),
        );
        gh.lazySingleton<_i1050.SignUpRepository>(
          () => _i984.SignUpRepositoryImpl(gh<_i128.SignUpRemoteDataSource>()),
        );
        gh.lazySingleton<_i561.SignUpWithEmailAndPasswordUseCase>(
          () => _i561.SignUpWithEmailAndPasswordUseCase(
            gh<_i1050.SignUpRepository>(),
          ),
        );
        gh.lazySingleton<_i112.SignUpWithGoogleUseCase>(
          () => _i112.SignUpWithGoogleUseCase(gh<_i1050.SignUpRepository>()),
        );
        gh.lazySingleton<_i620.SignUpBloc>(
          () => _i620.SignUpBloc(
            gh<_i561.SignUpWithEmailAndPasswordUseCase>(),
            gh<_i112.SignUpWithGoogleUseCase>(),
          ),
        );
      },
    );
  }
}
