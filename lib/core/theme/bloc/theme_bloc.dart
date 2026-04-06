import 'package:baby_vaccination/core/storage/storage_helper.dart';
import 'package:baby_vaccination/core/storage/storage_keys.dart';
import 'package:baby_vaccination/core/constants/strings.dart';
import 'package:baby_vaccination/core/theme/components/custom_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_state.dart';
part 'theme_event.dart';
part 'theme_bloc.freezed.dart';

@lazySingleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitialState()) {
    on<ThemeEvent>((event, emit) async {
      await event.when(
        fetchCachedTheme: () => _onFetchCachedTheme(emit),
        changeTheme: (value) => _onChangeTheme(value, emit),
      );
    });
  }

  ThemeData theme = ThemeData.light();
  ThemeMode themeMode = ThemeMode.light;

  ThemeData lightThemeData = CustomThemeData.light;
  ThemeData darkThemeData = CustomThemeData.dark;

  Future<void> _onFetchCachedTheme(Emitter<ThemeState> emit) async {
    final String theme =
        await StorageHelper.read(StorageKeys.theme) ?? AppStrings.lightTheme;
    add(ChangeThemeEvent(theme));
  }

  Future<void> _onChangeTheme(String value, Emitter<ThemeState> emit) async {
    themeMode =
        value == AppStrings.darkTheme ? ThemeMode.dark : ThemeMode.light;
    theme = themeMode == ThemeMode.dark ? ThemeData.dark() : ThemeData.light();
    emit(const ThemeChangeState());
  }
}
