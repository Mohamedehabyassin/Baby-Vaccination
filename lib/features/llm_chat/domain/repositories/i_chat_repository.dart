import 'package:baby_vaccination/features/llm_chat/domain/entities/chat_message.dart';
import 'package:dartz/dartz.dart';
import 'package:baby_vaccination/core/errors/failure.dart';

abstract class IChatRepository {
  Future<Either<Failure, String>> sendMessage(String text, List<ChatDomainMessage> history);
}
