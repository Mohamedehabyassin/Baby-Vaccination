import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class SignInRemoteDataSource {
  Future<Either<Failure, bool>> signInWithEmail(String email, String password);
  Future<Either<Failure, bool>> signInWithGoogle();
}

@lazySingleton
class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  @override
  Future<Either<Failure, bool>> signInWithEmail(String email, String password) {
    // TODO: implement signInWithEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
