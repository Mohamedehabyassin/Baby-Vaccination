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
import '../../features/babies/data/data_sources/babies_local_data_source.dart'
    as _i1049;
import '../../features/babies/data/data_sources/babies_remote_data_source.dart'
    as _i679;
import '../../features/babies/data/repository/babies_repository_impl.dart'
    as _i15;
import '../../features/babies/domain/repository/babies_repository.dart'
    as _i427;
import '../../features/babies/domain/use_cases/get_babies_use_case.dart'
    as _i377;
import '../../features/babies/presentation/bloc/babies_bloc.dart' as _i577;
import '../../features/baby_details/data/data_sources/baby_details_remote_data_source.dart'
    as _i478;
import '../../features/baby_details/data/repository/baby_details_repository_impl.dart'
    as _i306;
import '../../features/baby_details/domain/repository/baby_details_repository.dart'
    as _i157;
import '../../features/baby_details/presentation/bloc/baby_details_bloc.dart'
    as _i522;
import '../../features/facilities/presentation/bloc/facilities_bloc.dart'
    as _i90;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/llm_chat/data/repositories/chat_repository_impl.dart'
    as _i578;
import '../../features/llm_chat/data/sources/gemini_data_source.dart' as _i16;
import '../../features/llm_chat/domain/repositories/i_chat_repository.dart'
    as _i964;
import '../../features/llm_chat/domain/use_cases/get_chat_response_use_case.dart'
    as _i519;
import '../../features/llm_chat/presentation/bloc/llm_chat_bloc.dart' as _i184;
import '../../features/main_navigation/presentation/bloc/navigation_bloc.dart'
    as _i999;
import '../../features/manage_baby/data/data_sources/baby_local_data_source.dart'
    as _i736;
import '../../features/manage_baby/data/data_sources/manage_baby_remote_data_source.dart'
    as _i1052;
import '../../features/manage_baby/data/repository/manage_baby_repository_impl.dart'
    as _i743;
import '../../features/manage_baby/domain/repository/manage_baby_repository.dart'
    as _i738;
import '../../features/manage_baby/presentation/bloc/manage_baby_bloc.dart'
    as _i293;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i469;
import '../localization/bloc/localization_bloc.dart' as _i434;
import '../localization/wrapper/localization_wrapper.dart' as _i213;
import '../services/connectivity/connectivity_manger.dart' as _i260;
import '../services/firebase/firebase_auth_manger.dart' as _i754;
import '../services/firebase/firestore_manager.dart' as _i362;
import '../services/gemini/gemini_service.dart' as _i671;
import '../services/location/location_service.dart' as _i1046;
import '../theme/bloc/theme_bloc.dart' as _i279;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc());
    gh.factory<_i999.NavigationBloc>(() => _i999.NavigationBloc());
    gh.factory<_i469.ProfileBloc>(() => _i469.ProfileBloc());
    gh.lazySingleton<_i434.LocalizationBloc>(() => _i434.LocalizationBloc());
    gh.lazySingleton<_i213.LocalizationWrapper>(
      () => _i213.LocalizationWrapper(),
    );
    gh.lazySingleton<_i260.ConnectivityManager>(
      () => _i260.ConnectivityManager(),
    );
    gh.lazySingleton<_i754.FirebaseAuthManger>(
      () => _i754.FirebaseAuthManger(),
    );
    gh.lazySingleton<_i671.GeminiService>(() => _i671.GeminiService());
    gh.lazySingleton<_i1046.LocationServiceImpl>(
      () => _i1046.LocationServiceImpl(),
    );
    gh.lazySingleton<_i279.ThemeBloc>(() => _i279.ThemeBloc());
    gh.lazySingleton<_i1049.BabiesLocalDataSource>(
      () => _i1049.BabiesLocalDataSourceImpl(),
    );
    gh.lazySingleton<_i736.BabyLocalDataSource>(
      () => _i736.BabyLocalDataSourceImpl(),
    );
    gh.factory<_i90.FacilitiesBloc>(
      () => _i90.FacilitiesBloc(gh<_i1046.LocationServiceImpl>()),
    );
    gh.lazySingleton<_i362.FirebaseManager>(
      () => _i362.FirebaseManager(
        gh<_i260.ConnectivityManager>(),
        gh<_i754.FirebaseAuthManger>(),
      ),
    );
    gh.lazySingleton<_i1052.ManageBabyRemoteDataSource>(
      () => _i1052.ManageBabyRemoteDataSourceImpl(gh<_i362.FirebaseManager>()),
    );
    gh.lazySingleton<_i16.IGeminiDataSource>(
      () => _i16.GeminiDataSourceImpl(gh<_i671.GeminiService>()),
    );
    gh.lazySingleton<_i478.BabyDetailsRemoteDataSource>(
      () => _i478.BabyDetailsRemoteDataSourceImpl(gh<_i362.FirebaseManager>()),
    );
    gh.lazySingleton<_i679.BabiesRemoteDataSource>(
      () => _i679.BabiesRemoteDataSourceImpl(gh<_i362.FirebaseManager>()),
    );
    gh.lazySingleton<_i157.BabyDetailsRepository>(
      () => _i306.BabyDetailsRepositoryImpl(
        gh<_i478.BabyDetailsRemoteDataSource>(),
        gh<_i736.BabyLocalDataSource>(),
        gh<_i260.ConnectivityManager>(),
      ),
    );
    gh.lazySingleton<_i738.ManageBabyRepository>(
      () => _i743.ManageBabyRepositoryImpl(
        gh<_i1052.ManageBabyRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i427.BabiesRepository>(
      () => _i15.BabiesRepositoryImpl(
        gh<_i679.BabiesRemoteDataSource>(),
        gh<_i1049.BabiesLocalDataSource>(),
        gh<_i260.ConnectivityManager>(),
      ),
    );
    gh.lazySingleton<_i964.IChatRepository>(
      () => _i578.ChatRepositoryImpl(gh<_i16.IGeminiDataSource>()),
    );
    gh.factory<_i293.ManageBabyBloc>(
      () => _i293.ManageBabyBloc(gh<_i738.ManageBabyRepository>()),
    );
    gh.lazySingleton<_i377.GetBabiesUseCase>(
      () => _i377.GetBabiesUseCase(gh<_i427.BabiesRepository>()),
    );
    gh.factory<_i522.BabyDetailsBloc>(
      () => _i522.BabyDetailsBloc(gh<_i157.BabyDetailsRepository>()),
    );
    gh.factory<_i577.BabiesBloc>(
      () => _i577.BabiesBloc(gh<_i377.GetBabiesUseCase>()),
    );
    gh.lazySingleton<_i519.GetChatResponseUseCase>(
      () => _i519.GetChatResponseUseCase(gh<_i964.IChatRepository>()),
    );
    gh.factory<_i184.LlmChatBloc>(
      () => _i184.LlmChatBloc(gh<_i519.GetChatResponseUseCase>()),
    );
    return this;
  }

  // initializes the registration of signUp-scope dependencies inside of GetIt
  _i174.GetIt initSignUpScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'signUp',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i362.SignUpRemoteDataSource>(
          () =>
              _i362.SignUpRemoteDataSourceImpl(gh<_i754.FirebaseAuthManger>()),
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

  // initializes the registration of signIn-scope dependencies inside of GetIt
  _i174.GetIt initSignInScope({_i174.ScopeDisposeFunc? dispose}) {
    return _i526.GetItHelper(this).initScope(
      'signIn',
      dispose: dispose,
      init: (_i526.GetItHelper gh) {
        gh.lazySingleton<_i128.SignInRemoteDataSource>(
          () =>
              _i128.SignInRemoteDataSourceImpl(gh<_i754.FirebaseAuthManger>()),
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
}
