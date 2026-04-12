part of 'localization_bloc.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const factory LocalizationState.initial() = LocalizationInitial;
  const factory LocalizationState.changeState(String language) =
      LocalizationChangeState;
}
