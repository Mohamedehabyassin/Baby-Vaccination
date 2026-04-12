import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_baby_state.freezed.dart';

@freezed
class ManageBabyState with _$ManageBabyState {
  const factory ManageBabyState.initial() = _Initial;
  const factory ManageBabyState.formUpdated() = _FormUpdated;
  const factory ManageBabyState.loading() = _Loading;
  const factory ManageBabyState.success() = _Success;
  const factory ManageBabyState.error(Failure failure) = _Error;
}
