import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/usecases/no_paramters.dart';
import 'package:baby_vaccination/core/usecases/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_up/domain/repository/sign_up_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(scope: 'signUp')
class SignUpWithGoogleUseCase extends BaseUseCase<bool, NoParamters> {
  SignUpWithGoogleUseCase(this._repository);
  final SignUpRepository _repository;
  @override
  Future<Either<Failure, bool>> call(NoParamters params) async {
    return await _repository.signUpWithGoogle();
  }
}
