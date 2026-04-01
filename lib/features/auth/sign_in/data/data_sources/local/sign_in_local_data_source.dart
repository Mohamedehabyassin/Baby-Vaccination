import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SignInLocalDataSource {
  Future<Either<Failure, bool>> signInWithBiometric();
}
