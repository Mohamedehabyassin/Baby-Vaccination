import 'package:baby_vaccination/features/llm_chat/domain/entities/chat_message.dart'
    as app;
import 'package:baby_vaccination/features/llm_chat/domain/use_cases/get_chat_response_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

class GeminiChatProvider extends ChangeNotifier implements LlmProvider {
  GeminiChatProvider(this._getChatResponseUseCase);

  final GetChatResponseUseCase _getChatResponseUseCase;
  Iterable<ChatMessage> _history = [];

  @override
  Iterable<ChatMessage> get history => _history;

  @override
  set history(Iterable<ChatMessage> history) {
    _history = history;
    notifyListeners();
  }

  @override
  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<dynamic>? attachments,
  }) async* {
    final domainHistory = _history
        .map(
          (m) => app.ChatDomainMessage(
            text: m.text ?? '',
            isUser: m.origin == MessageOrigin.user,
            timestamp: DateTime.now(),
          ),
        )
        .toList();

    final result = await _getChatResponseUseCase((prompt, domainHistory));

    String fullResponse = '';

    yield* result.fold(
      (failure) async* {
        yield 'Sorry, I encountered an error. Please try again.';
      },
      (response) async* {
        fullResponse = response;
        yield response;
      },
    );

    if (fullResponse.isNotEmpty) {
      final newHistory = List<ChatMessage>.from(_history);
      newHistory.add(
        ChatMessage(
          text: prompt,
          origin: MessageOrigin.user,
          attachments: const [],
        ),
      );
      newHistory.add(
        ChatMessage(
          text: fullResponse,
          origin: MessageOrigin.llm,
          attachments: const [],
        ),
      );
      _history = newHistory;
      notifyListeners();
    }
  }

  @override
  Stream<String> generateStream(
    String prompt, {
    Iterable<dynamic>? attachments,
  }) async* {
    final result = await _getChatResponseUseCase((prompt, []));
    yield* result.fold(
      (failure) async* {
        yield 'Error';
      },
      (response) async* {
        yield response;
      },
    );
  }
}
