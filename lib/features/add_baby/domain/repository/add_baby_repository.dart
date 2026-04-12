import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AddBabyRepository {
  Future<Either<Failure, Success<void>>> addBaby(BabyEntity baby);
  Future<Either<Failure, Success<void>>> updateBaby(BabyEntity baby);
}
