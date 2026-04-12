import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/core/services/connectivity/connectivity_manger.dart';
import 'package:baby_vaccination/features/manage_baby/data/data_sources/baby_local_data_source.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:baby_vaccination/features/baby_details/data/data_sources/baby_details_remote_data_source.dart';
import 'package:baby_vaccination/features/baby_details/domain/repository/baby_details_repository.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BabyDetailsRepository)
class BabyDetailsRepositoryImpl implements BabyDetailsRepository {
  BabyDetailsRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._connectivityManager,
  );

  final BabyDetailsRemoteDataSource _remoteDataSource;
  final BabyLocalDataSource _localDataSource;
  final ConnectivityManager _connectivityManager;

  @override
  Future<Either<Failure, Success<List<BabyEntity>>>> getBabies() async {
    if (await _connectivityManager.isConnected) {
      final response = await _remoteDataSource.getBabies();
      return response.fold((failure) => Left(failure), (success) async {
        final models = success.data as List<BabyModel>;
        await _localDataSource.cacheBabies(models);
        return Right(Success(data: models));
      });
    } else {
      try {
        final cachedBabies = await _localDataSource.getCachedBabies();
        if (cachedBabies.isNotEmpty) {
          return Right(Success(data: cachedBabies));
        } else {
          return Left(
            Failure(message: "No internet connection and no cached data"),
          );
        }
      } catch (e) {
        return Left(Failure(message: "Error fetching cached data: $e"));
      }
    }
  }
}
