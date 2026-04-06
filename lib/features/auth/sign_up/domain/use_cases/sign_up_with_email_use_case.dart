import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/usecases/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/entity/sign_up_params_entity.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/repository/sign_up_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(scope: 'signUp')
class SignUpWithEmailAndPasswordUseCase
    extends BaseUseCase<bool, SignUpParamsEntity> {
  SignUpWithEmailAndPasswordUseCase(this._repository);
  final SignUpRepository _repository;
  @override
  Future<Either<Failure, bool>> call(SignUpParamsEntity params) async {
    return await _repository.signUpWithEmail(params);
  }
}
