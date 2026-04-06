part of 'sign_up_bloc.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success() = Success;
  const factory SignUpState.error(Failure failure) = Error;
}
