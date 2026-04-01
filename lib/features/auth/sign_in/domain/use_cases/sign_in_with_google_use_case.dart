import 'package:baby_vaccination/core/data/network/failure.dart';
import 'package:baby_vaccination/core/domain/base_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SignInWithGoogleUseCase extends BaseUseCase {
  @override
  Future<Either<Failure<dynamic>, dynamic>> call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
