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

  Future<Either<Failure, Success<QuerySnapshot>>> readAll(
    String collectionName,
  ) async {
    if (await safeCall()) {
      try {
        final userId = _firebaseAuthManger.currentUser?.uid;
        if (userId == null) return Left(Failure(message: "User not logged in"));
        CollectionReference col = db.collection(collectionName);
        final response = await col.where('userId', isEqualTo: userId).get();
        return Right(Success(data: response));
      } catch (error) {
        return Left(Failure(message: error.toString(), error: error));
      }
    } else {
      return Left(Failure(message: "No Internet connection"));
    }
  }

  Future<Either<Failure, Success<DocumentSnapshot>>> readOne(
    String collectionName,
    String docId,
  ) async {
    if (await safeCall()) {
      try {
        final response = await db.collection(collectionName).doc(docId).get();
        if (response.exists) {
          return Right(Success(data: response));
        } else {
          return Left(Failure(message: "Document not found"));
        }
      } catch (error) {
        return Left(Failure(message: error.toString(), error: error));
      }
    } else {
      return Left(Failure(message: "No Internet connection"));
    }
  }

  Future<Either<Failure, Success<void>>> update(
    String collectionName,
    String docId,
    Map<String, dynamic> data,
  ) async {
    if (await safeCall()) {
      try {
        await db.collection(collectionName).doc(docId).update(data);
        return Right(Success(data: null));
      } catch (error) {
        return Left(Failure(message: error.toString(), error: error));
      }
    } else {
      return Left(Failure(message: "No Internet connection"));
    }
  }

  Future<Either<Failure, Success<void>>> delete(
    String collectionName,
    String docId,
  ) async {
    if (await safeCall()) {
      try {
        await db.collection(collectionName).doc(docId).delete();
        return Right(Success(data: null));
      } catch (error) {
        return Left(Failure(message: error.toString(), error: error));
      }
    } else {
      return Left(Failure(message: "No Internet connection"));
    }
  }
}
