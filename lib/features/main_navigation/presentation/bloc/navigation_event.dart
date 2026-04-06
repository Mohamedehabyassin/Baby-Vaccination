part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.changeTab(int index) = ChangeTabEvent;
}
