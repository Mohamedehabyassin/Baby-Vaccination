import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_baby_event.freezed.dart';

@freezed
class AddBabyEvent with _$AddBabyEvent {
  const factory AddBabyEvent.addBaby() = _AddBaby;
  const factory AddBabyEvent.updateBaby() = _UpdateBaby;
  const factory AddBabyEvent.updateDate(DateTime date) = _UpdateDate;
  const factory AddBabyEvent.updateGender(String gender) = _UpdateGender;
  const factory AddBabyEvent.updateBloodType(String bloodType) =
      _UpdateBloodType;
}
