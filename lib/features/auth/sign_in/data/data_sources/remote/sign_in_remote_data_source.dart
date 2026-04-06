import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/network/firebase_auth_manger.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class SignInRemoteDataSource {
  Future<Either<Failure, bool>> signInWithEmail(String email, String password);
  Future<Either<Failure, bool>> signInWithGoogle();
}

@LazySingleton(as: SignInRemoteDataSource, scope: 'signIn')
class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  SignInRemoteDataSourceImpl(this.firebaseAuth);
  final FirebaseAuthManger firebaseAuth;
  @override
  Future<Either<Failure, bool>> signInWithEmail(
    String email,
    String password,
  ) async {
    final response = await firebaseAuth.signInWithEmailAndPassword(
      email,
      password,
    );

    return response.fold((failure) => Left(failure), (user) => const Right(true));
  }

  @override
  Future<Either<Failure, bool>> signInWithGoogle() async {
    final response = await firebaseAuth.signInWithGoogle();
    return response.fold((failure) => Left(failure), (user) => const Right(true));
  }
}
