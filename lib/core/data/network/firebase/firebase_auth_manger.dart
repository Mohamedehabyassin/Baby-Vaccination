import 'package:baby_vaccination/core/data/models/user_model.dart';
import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/data/network/success.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseAuthManger {
  FirebaseAuthManger();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User? get currentUser => _auth.currentUser;

  bool get isAuthenticated => currentUser != null;
  UserModel? _userFromFirebaseUser(User? user) {
    return user != null ? UserModel(user.uid) : null;
  }

  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future<Either<Failure, Success<UserCredential>>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.credential != null) {
        return Right(Success(data: userCredential));
      } else {
        return Left(Failure());
      }
    } catch (e) {
      return Left(Failure(message: e.toString(), errorObject: e));
    }
  }

  Future<Either<Failure, Success<UserCredential>>> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      // await DatabaseService().addUser(email, '');
      return Right(Success(data: userCredential));
    } catch (e) {
      return Left(Failure(message: e.toString(), errorObject: e));
    }
  }

  Future<Either<Failure, Success<User>>> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      if (googleAuth.idToken != null) {
        final userCredential = await _auth.signInWithCredential(
          GoogleAuthProvider.credential(
            idToken: googleAuth.idToken,
            accessToken: googleAuth.accessToken,
          ),
        );
        // await DatabaseService().addUser(userCredential.user.email, '');

        return Right(Success(data: userCredential.user));
      } else {
        return Left(Failure());
      }
    } else {
      return Left(Failure());
    }

    // Once signed in, return the UserCredential
    // return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<Either<Failure, Success<bool>>> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      return Right(Success(data: true));
    } catch (e) {
      return Left(Failure(message: e.toString(), errorObject: e));
    }
  }
}
