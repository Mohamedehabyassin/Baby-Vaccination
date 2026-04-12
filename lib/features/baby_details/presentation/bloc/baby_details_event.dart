import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_details_event.freezed.dart';

@freezed
class BabyDetailsEvent with _$BabyDetailsEvent {
  const factory BabyDetailsEvent.getBabies() = GetBabiesEvent;
}
