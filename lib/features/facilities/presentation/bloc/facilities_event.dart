part of 'facilities_bloc.dart';

@freezed
class FacilitiesEvent with _$FacilitiesEvent {
  const factory FacilitiesEvent.loadLocation() = LoadLocationEvent;
  const factory FacilitiesEvent.retryLocation() = RetryLocationEvent;
}
