part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.initial({@Default(0) int index}) =
      NavigationInitial;
  const factory NavigationState.tabChanged({@Default(0) int index}) =
      NavigationTabChanged;
}
