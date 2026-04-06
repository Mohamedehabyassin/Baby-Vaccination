import 'package:baby_vaccination/core/storage/storage_helper.dart';
import 'package:baby_vaccination/core/storage/storage_keys.dart';
import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/utils/singleton/user_data_singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'localization_state.dart';
part 'localization_event.dart';
part 'localization_bloc.freezed.dart';

@lazySingleton
class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(const LocalizationInitial()) {
    on<LocalizationEvent>((event, emit) async {
      await event.when(
        fetchCachedLocalization: () => _onFetchCachedLocalization(emit),
        changeApplicationLanguage: (language) =>
            _onChangeApplicationLanguage(language, emit),
      );
    });
  }

  Locale applicationLocale = const Locale(AppStrings.english);

  Future<void> _onFetchCachedLocalization(
    Emitter<LocalizationState> emit,
  ) async {
    final String language =
        await StorageHelper.read(StorageKeys.language) ?? AppStrings.english;
    add(ChangeApplicationLanguageEvent(language));
  }

  Future<void> _onChangeApplicationLanguage(
    String language,
    Emitter<LocalizationState> emit,
  ) async {
    applicationLocale = Locale(language);
    UserDataSingleton.languageSetter = language;
    await StorageHelper.write(StorageKeys.language, language);
    emit(LocalizationChangeState(language));
  }
}
