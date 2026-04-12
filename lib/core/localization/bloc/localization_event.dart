part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  const factory LocalizationEvent.fetchCachedLocalization() =
      FetchCachedLocalizationEvent;
  const factory LocalizationEvent.changeApplicationLanguage(String language) =
      ChangeApplicationLanguageEvent;
}
