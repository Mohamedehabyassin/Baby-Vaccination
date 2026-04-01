part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = Loading;
  const factory SignInState.success() = Success;
  const factory SignInState.error(Failure failure) = Error;
  const factory SignInState.toast(String message, ToastType toastType) = Toast;
}
