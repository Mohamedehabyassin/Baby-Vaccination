import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/services/connectivity/connectivity_manger.dart';
import 'package:baby_vaccination/features/manage_baby/domain/entity/baby_entity.dart';
import 'package:baby_vaccination/features/babies/data/data_sources/babies_local_data_source.dart';
import 'package:baby_vaccination/features/babies/data/data_sources/babies_remote_data_source.dart';
import 'package:baby_vaccination/features/babies/domain/repository/babies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BabiesRepository)
class BabiesRepositoryImpl implements BabiesRepository {
  BabiesRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._connectivityManager,
  );

  final BabiesRemoteDataSource _remoteDataSource;
  final BabiesLocalDataSource _localDataSource;
  final ConnectivityManager _connectivityManager;

  @override
  Future<Either<Failure, List<BabyEntity>>> getBabies() async {
    if (await _connectivityManager.isConnected) {
      final remoteResult = await _remoteDataSource.getBabies();
      return remoteResult.fold((failure) => Left(failure), (babies) async {
        await _localDataSource.cacheBabies(babies);
        return Right(babies);
      });
    } else {
      final cachedBabies = await _localDataSource.getCachedBabies();
      if (cachedBabies.isNotEmpty) {
        return Right(cachedBabies);
      } else {
        return Left(
          Failure(message: "No internet connection and no cached data"),
        );
      }
    }
  }
}
