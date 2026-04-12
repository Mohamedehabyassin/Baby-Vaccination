import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/babies/domain/repository/babies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBabiesUseCase {
  GetBabiesUseCase(this._repository);
  final BabiesRepository _repository;

  Future<Either<Failure, List<BabyEntity>>> call() async {
    return await _repository.getBabies();
  }
}
