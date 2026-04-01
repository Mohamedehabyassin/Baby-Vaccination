part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signInWithEmailAndPassword(
    String email,
    String password,
  ) = SignInWithEmailAndPassword;
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
}
