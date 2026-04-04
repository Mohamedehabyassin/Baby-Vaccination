import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class SignInLocalDataSource {
  Future<Either<Failure, bool>> signInWithBiometric();
}

@LazySingleton(as: SignInLocalDataSource, scope: 'signIn')
class SignInLocalDataSourceImpl implements SignInLocalDataSource {
  @override
  Future<Either<Failure, bool>> signInWithBiometric() {
    // TODO: implement signInWithBiometric
    throw UnimplementedError();
  }
}
