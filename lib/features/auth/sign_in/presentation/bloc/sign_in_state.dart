part of 'sign_in_bloc.dart';

@freezed
class SignInState<T> with _$SignInState {
  const factory SignInState.initial() = _Initial<T>;
  const factory SignInState.loading() = Loading<T>;
  const factory SignInState.success() = Success<T>;
  const factory SignInState.error(Failure failure) = Error<T>;
  const factory SignInState.toast(String message, ToastType toastType) =
      Toast<T>;
}
