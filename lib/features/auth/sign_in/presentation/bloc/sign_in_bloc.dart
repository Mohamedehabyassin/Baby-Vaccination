import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/usecases/no_paramters.dart';
import 'package:baby_vaccination/core/constants/enums.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/entity/sign_in_params_entity.dart';
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
    on<SignInEvent>((event, emit) async {
      await event.whenOrNull(
        signInWithEmailAndPassword: () async {
          emit(const SignInState<SignInWithEmailAndPassword>.loading());
          final value = await _signInWithEmailAndPassword();
          value.fold(
            (l) {
              animationType = "fail";
              emit(SignInState.error(l));
            },
            (r) {
              animationType = "success";
              emit(const SignInState.success());
            },
          );
        },
        signInWithGoogle: () async {
          emit(const SignInState<SignInWithGoogleUseCase>.loading());
          final value = await _signInWithGoogle();
          value.fold(
            (l) => emit(SignInState.error(l)),
            (r) => emit(const SignInState.success()),
          );
        },
        signInWithBiometrics: () async {
          emit(const SignInState.loading());
          final value = await _signInWithBiometrics();
          value.fold(
            (l) => emit(SignInState.error(l)),
            (r) => emit(const SignInState.success()),
          );
        },
      );
    });
  }
  final SignInWithEmailAndPasswordUseCase _emailUseCase;
  final SignInWithGoogleUseCase _googleUseCase;
  final SignInWithBiometricsUseCase _biometricsUseCase;
  String animationType = "idle";

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode userFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  Future<Either<Failure, bool>> _signInWithEmailAndPassword() =>
      _emailUseCase.call(
        SignInParamsEntity(
          email: emailController.text,
          password: passwordController.text,
        ),
      );

  Future<Either<Failure, bool>> _signInWithGoogle() =>
      _googleUseCase.call(NoParamters());

  Future<Either<Failure, bool>> _signInWithBiometrics() =>
      _biometricsUseCase.call(NoParamters());

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    userFocusNode.dispose();
    passwordFocusNode.dispose();
    return super.close();
  }
}
