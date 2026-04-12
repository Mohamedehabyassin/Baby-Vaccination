import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_baby_event.freezed.dart';

@freezed
class ManageBabyEvent with _$ManageBabyEvent {
  const factory ManageBabyEvent.addBaby() = _ManageBaby;
  const factory ManageBabyEvent.updateBaby() = _UpdateBaby;
  const factory ManageBabyEvent.updateDate(DateTime date) = _UpdateDate;
  const factory ManageBabyEvent.updateGender(GenderType gender) = _UpdateGender;
  const factory ManageBabyEvent.updateBloodType(BloodType bloodType) =
      _UpdateBloodType;
}
