import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/services/firebase/firestore_manager.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class BabiesRemoteDataSource {
  Future<Either<Failure, List<BabyModel>>> getBabies();
}

@LazySingleton(as: BabiesRemoteDataSource)
class BabiesRemoteDataSourceImpl implements BabiesRemoteDataSource {
  BabiesRemoteDataSourceImpl(this._firebaseManager);
  final FirebaseManager _firebaseManager;
  final String _collectionName = 'babies';

  @override
  Future<Either<Failure, List<BabyModel>>> getBabies() async {
    final response = await _firebaseManager.readAll(_collectionName);
    return response.fold((failure) => Left(failure), (success) {
      final docs = success.data as dynamic;
      final List<BabyModel> babies = (docs.docs as List)
          .map(
            (doc) => BabyModel.fromJson(
              doc.data() as Map<String, dynamic>,
              id: doc.id,
            ),
          )
          .toList();
      return Right(babies);
    });
  }
}
