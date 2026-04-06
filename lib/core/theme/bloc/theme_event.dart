part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.fetchCachedTheme() = FetchCachedThemeEvent;
  const factory ThemeEvent.changeTheme(String value) = ChangeThemeEvent;
}
