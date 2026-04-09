import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/core/usecases/base_use_case.dart';
import 'package:baby_vaccination/features/llm_chat/domain/entities/chat_message.dart';
import 'package:baby_vaccination/features/llm_chat/domain/repositories/i_chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetChatResponseUseCase
    implements BaseUseCase<String, (String, List<ChatDomainMessage>)> {
  GetChatResponseUseCase(this._repository);
  final IChatRepository _repository;

  @override
  Future<Either<Failure, String>> call(
    (String, List<ChatDomainMessage>) params,
  ) async {
    return _repository.sendMessage(params.$1, params.$2);
  }
}
