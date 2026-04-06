import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/entity/sign_in_params_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SignInRepository {
  Future<Either<Failure, bool>> signInWithEmail(SignInParamsEntity params);
  Future<Either<Failure, bool>> signInWithGoogle();
  Future<Either<Failure, bool>> signInWithBiometric();
}
