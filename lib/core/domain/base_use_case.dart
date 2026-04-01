import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
