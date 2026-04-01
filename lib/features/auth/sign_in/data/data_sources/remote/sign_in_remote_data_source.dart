import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SignInRemoteDataSource {
  Future<Either<Failure, bool>> signInWithEmail(String email, String password);
  Future<Either<Failure, bool>> signInWithGoogle();
}
