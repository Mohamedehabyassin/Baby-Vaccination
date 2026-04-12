part of 'babies_bloc.dart';

@freezed
class BabiesState with _$BabiesState {
  const factory BabiesState.initial() = _Initial;
  const factory BabiesState.loading() = _Loading;
  const factory BabiesState.loaded(List<BabyModel> babies) = _Loaded;
  const factory BabiesState.error(Failure failure) = _Error;
}
