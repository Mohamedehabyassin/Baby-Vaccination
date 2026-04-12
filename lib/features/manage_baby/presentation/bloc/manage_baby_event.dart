import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_baby_event.freezed.dart';

@freezed
class ManageBabyEvent with _$ManageBabyEvent {
  const factory ManageBabyEvent.addBaby() = _ManageBaby;
  const factory ManageBabyEvent.updateBaby() = _UpdateBaby;
  const factory ManageBabyEvent.updateDate(DateTime date) = _UpdateDate;
  const factory ManageBabyEvent.updateGender(String gender) = _UpdateGender;
  const factory ManageBabyEvent.updateBloodType(String bloodType) =
      _UpdateBloodType;
}
