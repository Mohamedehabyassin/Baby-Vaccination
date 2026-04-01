import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/entity/sign_in_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/repository/sign_in_repository.dart';
import 'package:dartz/dartz.dart';

class SignInWithEmailUseCase extends BaseUseCase<bool, SignInParamsEntity> {
  SignInWithEmailUseCase(this._repository);
  final SignInRepository _repository;
  @override
  Future<Either<Failure, bool>> call(SignInParamsEntity params) async {
    return await _repository.signInWithEmail(params);
  }
}
