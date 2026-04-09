import 'package:baby_vaccination/core/errors/failure.dart';
import 'package:baby_vaccination/features/llm_chat/data/sources/gemini_data_source.dart';
import 'package:baby_vaccination/features/llm_chat/domain/entities/chat_message.dart';
import 'package:baby_vaccination/features/llm_chat/domain/repositories/i_chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatRepository)
class ChatRepositoryImpl implements IChatRepository {
  ChatRepositoryImpl(this._remoteDataSource);
  final IGeminiDataSource _remoteDataSource;

  @override
  Future<Either<Failure, String>> sendMessage(
    String text,
    List<ChatDomainMessage> history,
  ) async {
    try {
      final List<Content> contentHistory = history.map((msg) {
        return Content(
          role: msg.isUser ? 'user' : 'model',
          parts: [Part.text(msg.text)],
        );
      }).toList();

      contentHistory.add(Content(role: 'user', parts: [Part.text(text)]));

      final response = await _remoteDataSource.chat(contentHistory);
      if (response != null) {
        return Right(response);
      } else {
        return Left(Failure(message: 'Server error'));
      }
    } catch (e) {
      return Left(Failure(message: 'Server error'));
    }
  }
}
