import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/entity/sign_in_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/repository/sign_in_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(scope: 'signIn')
class SignInWithEmailAndPasswordUseCase
    extends BaseUseCase<bool, SignInParamsEntity> {
  SignInWithEmailAndPasswordUseCase(this._repository);
  final SignInRepository _repository;
  @override
  Future<Either<Failure, bool>> call(SignInParamsEntity params) async {
    return await _repository.signInWithEmail(params);
  }
}
