part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpWithEmailAndPassword() = _SignUpWithEmailAndPassword;
  const factory SignUpEvent.signUpWithGoogle() = _SignUpWithGoogle;
}
