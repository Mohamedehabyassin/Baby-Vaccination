import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:baby_vaccination/core/services/firebase/firestore_manager.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class BabyDetailsRemoteDataSource {
  Future<Either<Failure, Success<List<BabyModel>>>> getBabies();
}

@LazySingleton(as: BabyDetailsRemoteDataSource)
class BabyDetailsRemoteDataSourceImpl implements BabyDetailsRemoteDataSource {
  BabyDetailsRemoteDataSourceImpl(this._firebaseManager);

  final FirebaseManager _firebaseManager;
  final String _collectionName = 'babies';

  @override
  Future<Either<Failure, Success<List<BabyModel>>>> getBabies() async {
    final response = await _firebaseManager.readAll(_collectionName);

    return response.fold((failure) => Left(failure), (success) {
      final querySnapshot = success.data as QuerySnapshot;
      final babies = querySnapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return BabyModel.fromJson(data, id: doc.id);
      }).toList();
      return Right(Success(data: babies));
    });
  }
}
