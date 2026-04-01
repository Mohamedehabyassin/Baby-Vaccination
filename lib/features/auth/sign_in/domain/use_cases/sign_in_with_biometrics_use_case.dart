import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/base_use_case.dart';
import 'package:baby_vaccination/features/auth/sign_in/domain/repository/sign_in_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignInWithBiometricsUseCase extends BaseUseCase<bool, void> {
  SignInWithBiometricsUseCase(this._repository);
  final SignInRepository _repository;
  @override
  Future<Either<Failure, bool>> call(void params) async {
    return await _repository.signInWithBiometric();
  }
}
