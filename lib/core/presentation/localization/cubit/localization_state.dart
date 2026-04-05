part of 'localization_cubit.dart';

@immutable
sealed class LocalizationState {}

final class LocalizationInitial extends LocalizationState {}

final class LocalizationChangeState extends LocalizationState {
  LocalizationChangeState(this.language);
  final String language;
}
