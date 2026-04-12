part of 'facilities_bloc.dart';

@freezed
class FacilitiesState with _$FacilitiesState {
  const factory FacilitiesState.initial() = FacilitiesInitial;
  const factory FacilitiesState.loading() = FacilitiesLoading;
  const factory FacilitiesState.loaded(LocationModel location) =
      FacilitiesLoaded;
  const factory FacilitiesState.error(Failure<LocationErrorsEnum> failure) =
      FacilitiesError;
}
