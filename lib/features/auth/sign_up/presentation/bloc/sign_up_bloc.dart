import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/usecases/no_paramters.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/entity/sign_up_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/use_cases/sign_up_with_email_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/use_cases/sign_up_with_google_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@LazySingleton(scope: 'signUp')
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._emailUseCase, this._googleUseCase)
    : super(const _Initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.whenOrNull(
        signUpWithEmailAndPassword: () async {
          emit(const SignUpState<SignUpWithEmailAndPasswordUseCase>.loading());
          final value = await _signUpWithEmailAndPassword();
          value.fold(
            (l) => emit(SignUpState.error(l)),
            (r) => emit(const SignUpState.success()),
          );
        },
        signUpWithGoogle: () async {
          emit(const SignUpState<SignUpWithGoogleUseCase>.loading());
          final value = await _signUpWithGoogle();
          value.fold(
            (l) => emit(SignUpState.error(l)),
            (r) => emit(const SignUpState.success()),
          );
        },
      );
    });
  }

  final SignUpWithEmailAndPasswordUseCase _emailUseCase;
  final SignUpWithGoogleUseCase _googleUseCase;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode genderFocusNode = FocusNode();

  Future<Either<Failure, bool>> _signUpWithEmailAndPassword() =>
      _emailUseCase.call(
        SignUpParamsEntity(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          gender: genderController.text,
          password: passwordController.text,
        ),
      );

  Future<Either<Failure, bool>> _signUpWithGoogle() =>
      _googleUseCase.call(NoParamters());

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    genderController.dispose();

    nameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
    passwordFocusNode.dispose();
    genderFocusNode.dispose();
    return super.close();
  }
}
