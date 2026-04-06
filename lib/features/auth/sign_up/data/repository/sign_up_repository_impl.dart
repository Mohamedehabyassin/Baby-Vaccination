import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/features/auth/sign_up/data/data_sources/remote/sign_up_remote_data_source.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/entity/sign_up_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/repository/sign_up_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpRepository, scope: 'signUp')
class SignUpRepositoryImpl implements SignUpRepository {
  SignUpRepositoryImpl(this._signUpRemoteDataSource);
  final SignUpRemoteDataSource _signUpRemoteDataSource;

  @override
  Future<Either<Failure, bool>> signUpWithEmail(SignUpParamsEntity params) async {
    return await _signUpRemoteDataSource.signUpWithEmail(params);
  }

  @override
  Future<Either<Failure, bool>> signUpWithGoogle() async {
    return await _signUpRemoteDataSource.signUpWithGoogle();
  }
}
