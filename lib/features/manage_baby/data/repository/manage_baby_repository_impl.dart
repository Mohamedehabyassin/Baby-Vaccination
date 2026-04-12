import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/features/manage_baby/data/data_sources/manage_baby_remote_data_source.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/manage_baby/domain/repository/manage_baby_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ManageBabyRepository)
class ManageBabyRepositoryImpl implements ManageBabyRepository {
  ManageBabyRepositoryImpl(this._remoteDataSource);

  final ManageBabyRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Success<void>>> addBaby(BabyEntity baby) {
    final model = BabyModel.fromEntity(baby);
    return _remoteDataSource.addBaby(model);
  }

  @override
  Future<Either<Failure, Success<void>>> updateBaby(BabyEntity baby) {
    if (baby.id == null) {
      return Future.value(Left(Failure(message: "Baby ID is missing")));
    }
    final model = BabyModel.fromEntity(baby);
    return _remoteDataSource.updateBaby(baby.id!, model);
  }
}
