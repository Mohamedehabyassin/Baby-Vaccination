import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}
