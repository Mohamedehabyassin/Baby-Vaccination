part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeInitialState;
  const factory ThemeState.changeState() = ThemeChangeState;
}
