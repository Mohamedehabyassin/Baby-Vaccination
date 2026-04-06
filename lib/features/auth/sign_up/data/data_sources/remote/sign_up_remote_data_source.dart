import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/network/firebase_auth_manger.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/entity/sign_up_params_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class SignUpRemoteDataSource {
  Future<Either<Failure, bool>> signUpWithEmail(SignUpParamsEntity params);
  Future<Either<Failure, bool>> signUpWithGoogle();
}

@LazySingleton(as: SignUpRemoteDataSource, scope: 'signUp')
class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  SignUpRemoteDataSourceImpl(this.firebaseAuth);
  final FirebaseAuthManger firebaseAuth;

  @override
  Future<Either<Failure, bool>> signUpWithEmail(
    SignUpParamsEntity params,
  ) async {
    final response = await firebaseAuth.registerWithEmailAndPassword(
      params.email,
      params.password,
    );
    return response.fold(
      (failure) => Left(failure),
      (user) => const Right(true),
    );
  }

  @override
  Future<Either<Failure, bool>> signUpWithGoogle() async {
    final response = await firebaseAuth.signInWithGoogle();
    return response.fold(
      (failure) => Left(failure),
      (user) => const Right(true),
    );
  }
}
