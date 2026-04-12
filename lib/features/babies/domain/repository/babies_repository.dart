import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:dartz/dartz.dart';

abstract class BabiesRepository {
  Future<Either<Failure, List<BabyEntity>>> getBabies();
}
