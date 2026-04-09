import 'package:baby_vaccination/core/services/connectivity/connectivity_manger.dart';
import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/services/firebase/firebase_auth_manger.dart';
import 'package:baby_vaccination/core/models/success.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseManager {
  FirebaseManager(this._connectivityManager, this._firebaseAuthManger);
  final ConnectivityManager _connectivityManager;
  final FirebaseAuthManger _firebaseAuthManger;

  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<bool> safeCall() async {
    return ((await _connectivityManager.isConnected) &&
        _firebaseAuthManger.isAuthenticated);
  }

  Future<Either<Failure, Success<DocumentReference>>> create(
    String collectionName,
    Map<String, dynamic> data,
  ) async {
    if (await safeCall()) {
      try {
        CollectionReference col = db.collection(collectionName);

        final response = await col.add(data);
        return Right(Success(data: response));
      } catch (error) {
        return Left(Failure(message: error.toString(), error: error));
      }
    } else {
      return Left(Failure(message: "No Internet connection"));
    }
  }

  Future read() async {
    CollectionReference col = db.collection("collectionPath");
    col.doc("").get();
  }

  Future update(String collectionName, Map<String, dynamic> data) async {
    if (await safeCall()) {
      final userId = _firebaseAuthManger.currentUser!.uid;
      return await db.doc(userId).update(data);
    }
  }

  Future delete(String collectionName, String id) async {
    if (await safeCall()) {}
  }
}
