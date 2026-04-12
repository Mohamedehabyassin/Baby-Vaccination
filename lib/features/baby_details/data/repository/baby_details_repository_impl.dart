import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/features/baby_details/data/data_sources/baby_details_remote_data_source.dart';
import 'package:baby_vaccination/features/baby_details/domain/repository/baby_details_repository.dart';
import 'package:baby_vaccination/features/add_baby/domain/entity/baby_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BabyDetailsRepository)
class BabyDetailsRepositoryImpl implements BabyDetailsRepository {
  BabyDetailsRepositoryImpl(this._remoteDataSource);

  final BabyDetailsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Success<List<BabyEntity>>>> getBabies() async {
    final response = await _remoteDataSource.getBabies();
    return response.fold((failure) => Left(failure), (success) {
      final models =
          success.data
              as List<BabyEntity>; // BabyModel inherits from BabyEntity
      return Right(Success(data: models));
    });
  }
}
