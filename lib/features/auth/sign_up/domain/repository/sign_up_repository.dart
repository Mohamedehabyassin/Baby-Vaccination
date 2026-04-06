import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/entity/sign_up_params_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepository {
  Future<Either<Failure, bool>> signUpWithEmail(SignUpParamsEntity params);
  Future<Either<Failure, bool>> signUpWithGoogle();
}
