import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/features/auth/sign_in/data/data_sources/local/sign_in_local_data_source.dart';
import 'package:baby_vaccination/features/auth/sign_in/data/data_sources/remote/sign_in_remote_data_source.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/entity/sign_in_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/repository/sign_in_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignInRepository, scope: 'signIn')
class SignInRepositoryImpl implements SignInRepository {
  SignInRepositoryImpl(
    this._signInLocalDataSource,
    this._signInRemoteDataSource,
  );
  final SignInLocalDataSource _signInLocalDataSource;
  final SignInRemoteDataSource _signInRemoteDataSource;
  @override
  Future<Either<Failure, bool>> signInWithEmail(
    SignInParamsEntity params,
  ) async {
    return await _signInRemoteDataSource.signInWithEmail(
      params.email,
      params.password,
    );
  }

  @override
  Future<Either<Failure, bool>> signInWithGoogle() async {
    return await _signInRemoteDataSource.signInWithGoogle();
  }

  @override
  Future<Either<Failure, bool>> signInWithBiometric() async {
    return await _signInLocalDataSource.signInWithBiometric();
  }
}
