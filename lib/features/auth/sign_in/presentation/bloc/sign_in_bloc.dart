import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/constants/enums.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_biometrics_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_email_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/use_cases/sign_in_with_google_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._emailUseCase, this._googleUseCase, this._biometricsUseCase)
    : super(_Initial()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
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
}
