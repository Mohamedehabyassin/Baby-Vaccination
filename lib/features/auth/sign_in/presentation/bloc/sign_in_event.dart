part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SignInEvent.signInWithBiometrics() = SignInWithBiometrics;
}
