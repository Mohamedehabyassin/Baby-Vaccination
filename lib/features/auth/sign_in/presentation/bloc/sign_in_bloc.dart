import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/constants/enums.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_biometrics_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_email_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_google_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@LazySingleton(scope: 'signIn')
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._emailUseCase, this._googleUseCase, this._biometricsUseCase)
    : super(_Initial()) {
    on<SignInEvent>((event, emit) {
      event.whenOrNull(
        signInWithEmailAndPassword: () {
          _signInWithEmailAndPassword();
        },
        signInWithGoogle: () {
          _signInWithGoogle();
        },
        signInWithBiometrics: () {
          _signInWithBiometrics();
        },
      );
    });
  }
  final SignInWithEmailUseCase _emailUseCase;
  final SignInWithGoogleUseCase _googleUseCase;
  final SignInWithBiometricsUseCase _biometricsUseCase;
  String animationType = "idle";
  String _email = '';
  String _password = '';
  final passwordController = TextEditingController();
  final userController = TextEditingController();
  final userFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool loading = false;

  void _signInWithEmailAndPassword() {
    animationType = "typing";
    emit(SignInState.error(Failure()));
  }

  void _signInWithGoogle() {
    add(const SignInEvent.signInWithGoogle());
  }

  void _signInWithBiometrics() {
    add(const SignInEvent.signInWithBiometrics());
  }
}
