import 'package:baby_vaccination/core/data/storage/storage_helper.dart';
import 'package:baby_vaccination/core/data/storage/storage_keys.dart';
import 'package:baby_vaccination/core/domain/constants/strings.dart';
import 'package:baby_vaccination/core/domain/singleton/user_data_singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'localization_state.dart';

@lazySingleton
class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  Locale applicationLocale = const Locale(AppStrings.arabic);

  Future<void> fetchCachedLanguage() async {
    final String language =
        await StorageHelper.read(StorageKeys.language) ?? AppStrings.arabic;
    changeApplicationLanguage(language);
  }

  void changeApplicationLanguage(String language) async {
    applicationLocale = Locale(language);
    UserDataSingleton.languageSetter = language;
    await StorageHelper.write(StorageKeys.language, language);
    emit(LocalizationChangeState(language));
  }
}
