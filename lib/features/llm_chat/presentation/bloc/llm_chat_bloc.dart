import 'package:baby_vaccination/features/llm_chat/domain/entities/chat_message.dart';
import 'package:baby_vaccination/features/llm_chat/domain/use_cases/get_chat_response_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'llm_chat_event.dart';
part 'llm_chat_state.dart';
part 'llm_chat_bloc.freezed.dart';

@injectable
class LlmChatBloc extends Bloc<LlmChatEvent, LlmChatState> {
  LlmChatBloc(this._getChatResponseUseCase)
    : super(const LlmChatState.initial()) {
    on<_SendMessage>(_onSendMessage);
    on<_ClearChat>(_onClearChat);
  }

  final GetChatResponseUseCase _getChatResponseUseCase;
  Future<void> _onSendMessage(
    _SendMessage event,
    Emitter<LlmChatState> emit,
  ) async {
    final currentMessages = state.when(
      initial: () => <ChatDomainMessage>[],
      loading: () => <ChatDomainMessage>[],
      loaded: (messages, errorMessage) => messages,
    );

    // Create new user message
    final userMessage = ChatDomainMessage(
      text: event.text,
      isUser: true,
      timestamp: DateTime.now(),
    );

    // Add user message to UI immediately
    final updatedMessages = [...currentMessages, userMessage];
    emit(const LlmChatState.loading());

    final result = await _getChatResponseUseCase((event.text, currentMessages));

    result.fold(
      (failure) {
        emit(
          LlmChatState.loaded(
            messages: updatedMessages,
            errorMessage:
                'Sorry, I couldn\'t get a response. Please try again.',
          ),
        );
      },
      (response) {
        final botMessage = ChatDomainMessage(
          text: response,
          isUser: false,
          timestamp: DateTime.now(),
        );
        emit(LlmChatState.loaded(messages: [...updatedMessages, botMessage]));
      },
    );
  }

  void _onClearChat(_ClearChat event, Emitter<LlmChatState> emit) {
    emit(const LlmChatState.initial());
  }
}
