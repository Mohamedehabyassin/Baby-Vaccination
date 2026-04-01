import 'package:baby_vaccination/core/data/storage/storage_helper.dart';
import 'package:baby_vaccination/core/data/storage/storage_keys.dart';
import 'package:baby_vaccination/core/domain/constants/strings.dart';
import 'package:baby_vaccination/core/presentation/theme/components/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitialState());

  ThemeData theme = ThemeData.light();
  ThemeMode themeMode = ThemeMode.light;

  ThemeData lightThemeData = CustomThemeData.light;
  ThemeData darkThemeData = CustomThemeData.dark;

  Future<void> fetchCachedTheme() async {
    final String theme =
        await StorageHelper.read(StorageKeys.theme) ?? AppStrings.lightTheme;
    changeTheme(theme);
  }

  void changeTheme(String value) async {
    themeMode = value == AppStrings.darkTheme
        ? ThemeMode.dark
        : ThemeMode.light;
    theme = themeMode == ThemeMode.dark ? ThemeData.dark() : ThemeData.light();
    emit(ThemeChangeState());
  }
}
