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

import '../../features/auth/sign_in/data/data_sources/local/sign_in_local_data_source.dart'
    as _i486;
import '../../features/auth/sign_in/data/data_sources/remote/sign_in_remote_data_source.dart'
    as _i128;
import '../../features/auth/sign_in/data/repository/sign_in_repositary_impl.dart'
    as _i415;
import '../../features/auth/sign_in/domain/repository/sign_in_repository.dart'
    as _i17;
import '../../features/auth/sign_in/domain/use_cases/sign_in_with_biometrics_use_case.dart'
    as _i868;
import '../../features/auth/sign_in/domain/use_cases/sign_in_with_email_use_case.dart'
    as _i1030;
import '../../features/auth/sign_in/domain/use_cases/sign_in_with_google_use_case.dart'
    as _i310;
import '../../features/auth/sign_in/presentation/bloc/sign_in_bloc.dart'
    as _i603;
import '../../features/auth/sign_up/data/data_sources/remote/sign_up_remote_data_source.dart'
    as _i362;
import '../../features/auth/sign_up/data/repository/sign_up_repository_impl.dart'
    as _i590;
import '../../features/auth/sign_up/domain/repository/sign_up_repository.dart'
    as _i988;
import '../../features/auth/sign_up/domain/use_cases/sign_up_with_email_use_case.dart'
    as _i193;
import '../../features/auth/sign_up/domain/use_cases/sign_up_with_google_use_case.dart'
    as _i862;
import '../../features/auth/sign_up/presentation/bloc/sign_up_bloc.dart'
    as _i130;
import '../../features/main_navigation/presentation/bloc/navigation_bloc.dart'
    as _i999;
import '../localization/bloc/localization_bloc.dart' as _i434;
import '../network/firebase_auth_manger.dart' as _i788;
import '../network/firestore_manager.dart' as _i1071;
import '../services/connectivity_manger.dart' as _i608;
import '../theme/bloc/theme_bloc.dart' as _i279;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i999.NavigationBloc>(() => _i999.NavigationBloc());
    gh.lazySingleton<_i434.LocalizationBloc>(() => _i434.LocalizationBloc());
    gh.lazySingleton<_i788.FirebaseAuthManger>(
      () => _i788.FirebaseAuthManger(),
    );
    gh.lazySingleton<_i279.ThemeBloc>(() => _i279.ThemeBloc());
    gh.lazySingleton<_i1071.FirebaseManager>(
      () => _i1071.FirebaseManager(
        gh<_i608.ConnectivityManager>(),
        gh<_i788.FirebaseAuthManger>(),
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
        gh.lazySingleton<_i128.SignInRemoteDataSource>(
          () =>
              _i128.SignInRemoteDataSourceImpl(gh<_i788.FirebaseAuthManger>()),
        );
        gh.lazySingleton<_i486.SignInLocalDataSource>(
          () => _i486.SignInLocalDataSourceImpl(),
        );
        gh.lazySingleton<_i17.SignInRepository>(
          () => _i415.SignInRepositoryImpl(
            gh<_i486.SignInLocalDataSource>(),
            gh<_i128.SignInRemoteDataSource>(),
          ),
        );
        gh.lazySingleton<_i868.SignInWithBiometricsUseCase>(
          () => _i868.SignInWithBiometricsUseCase(gh<_i17.SignInRepository>()),
        );
        gh.lazySingleton<_i1030.SignInWithEmailAndPasswordUseCase>(
          () => _i1030.SignInWithEmailAndPasswordUseCase(
            gh<_i17.SignInRepository>(),
          ),
        );
        gh.lazySingleton<_i310.SignInWithGoogleUseCase>(
          () => _i310.SignInWithGoogleUseCase(gh<_i17.SignInRepository>()),
        );
        gh.factory<_i603.SignInBloc>(
          () => _i603.SignInBloc(
            gh<_i1030.SignInWithEmailAndPasswordUseCase>(),
            gh<_i310.SignInWithGoogleUseCase>(),
            gh<_i868.SignInWithBiometricsUseCase>(),
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
        gh.lazySingleton<_i362.SignUpRemoteDataSource>(
          () =>
              _i362.SignUpRemoteDataSourceImpl(gh<_i788.FirebaseAuthManger>()),
        );
        gh.lazySingleton<_i988.SignUpRepository>(
          () => _i590.SignUpRepositoryImpl(gh<_i362.SignUpRemoteDataSource>()),
        );
        gh.lazySingleton<_i193.SignUpWithEmailAndPasswordUseCase>(
          () => _i193.SignUpWithEmailAndPasswordUseCase(
            gh<_i988.SignUpRepository>(),
          ),
        );
        gh.lazySingleton<_i862.SignUpWithGoogleUseCase>(
          () => _i862.SignUpWithGoogleUseCase(gh<_i988.SignUpRepository>()),
        );
        gh.factory<_i130.SignUpBloc>(
          () => _i130.SignUpBloc(
            gh<_i193.SignUpWithEmailAndPasswordUseCase>(),
            gh<_i862.SignUpWithGoogleUseCase>(),
          ),
        );
      },
    );
  }
}
