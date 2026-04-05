import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/data/network/no_paramters.dart';
import 'package:baby_vaccination/core/domain/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/repository/sign_in_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(scope: 'signIn')
class SignInWithGoogleUseCase extends BaseUseCase<bool, NoParamters> {
  SignInWithGoogleUseCase(this._repository);
  final SignInRepository _repository;
  @override
  Future<Either<Failure, bool>> call(NoParamters params) async {
    return await _repository.signInWithGoogle();
  }
}
