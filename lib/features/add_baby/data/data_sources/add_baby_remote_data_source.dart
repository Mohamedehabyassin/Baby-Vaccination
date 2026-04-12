import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/core/services/firebase/firestore_manager.dart';
import 'package:baby_vaccination/features/add_baby/data/models/baby_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class AddBabyRemoteDataSource {
  Future<Either<Failure, Success<void>>> addBaby(BabyModel baby);
  Future<Either<Failure, Success<void>>> updateBaby(String id, BabyModel baby);
}

@LazySingleton(as: AddBabyRemoteDataSource)
class AddBabyRemoteDataSourceImpl implements AddBabyRemoteDataSource {
  AddBabyRemoteDataSourceImpl(this._firebaseManager);

  final FirebaseManager _firebaseManager;
  final String _collectionName = 'babies';

  @override
  Future<Either<Failure, Success<void>>> addBaby(BabyModel baby) async {
    final response = await _firebaseManager.create(
      _collectionName,
      baby.toJson(),
    );
    return response.fold(
      (failure) => Left(failure),
      (success) => Right(Success()),
    );
  }

  @override
  Future<Either<Failure, Success<void>>> updateBaby(
    String id,
    BabyModel baby,
  ) async {
    final response = await _firebaseManager.update(
      _collectionName,
      id,
      baby.toJson(),
    );
    return response;
  }
}
