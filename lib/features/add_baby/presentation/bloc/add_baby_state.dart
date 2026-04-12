import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_baby_state.freezed.dart';

@freezed
class AddBabyState with _$AddBabyState {
  const factory AddBabyState.initial() = _Initial;
  const factory AddBabyState.formUpdated() = _FormUpdated;
  const factory AddBabyState.loading() = _Loading;
  const factory AddBabyState.success() = _Success;
  const factory AddBabyState.error(Failure failure) = _Error;
}
