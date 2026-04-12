import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_details_state.freezed.dart';

@freezed
class BabyDetailsState with _$BabyDetailsState {
  const factory BabyDetailsState.initial() = _Initial;
  const factory BabyDetailsState.loading() = _Loading;
  const factory BabyDetailsState.loaded(List<BabyEntity> babies) =
      BabyDetailsLoaded;
  const factory BabyDetailsState.error(Failure failure) = _Error;
}
