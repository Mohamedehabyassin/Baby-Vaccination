import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:dartz/dartz.dart';

abstract class BabyDetailsRepository {
  Future<Either<Failure, Success<List<BabyEntity>>>> getBabies();
}
