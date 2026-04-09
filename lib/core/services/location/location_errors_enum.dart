import 'package:baby_vaccination/core/di/injection.dart';
import 'package:baby_vaccination/core/localization/wrapper/localization_wrapper.dart';

enum LocationErrorsEnum {
  locationServiceDisabled,
  locationPermissionDenied,
  locationPermissionDeniedForever,
  locationPermissionRestricted,
  locationPermissionUnableToDetermine,
  locationFetchException;

  static String getErrorMessage(LocationErrorsEnum error) {
    switch (error) {
      case LocationErrorsEnum.locationServiceDisabled:
        return getIt<LocalizationWrapper>().current.locationServiceDisabled;
      case LocationErrorsEnum.locationPermissionDenied:
        return getIt<LocalizationWrapper>().current.locationPermissionDenied;
      case LocationErrorsEnum.locationPermissionDeniedForever:
        return getIt<LocalizationWrapper>()
            .current
            .locationPermissionDeniedForever;
      case LocationErrorsEnum.locationPermissionRestricted:
        return getIt<LocalizationWrapper>()
            .current
            .locationPermissionRestricted;
      case LocationErrorsEnum.locationPermissionUnableToDetermine:
        return getIt<LocalizationWrapper>()
            .current
            .locationPermissionUnableToDetermine;
      case LocationErrorsEnum.locationFetchException:
        return getIt<LocalizationWrapper>().current.locationFetchException;
    }
  }
}
