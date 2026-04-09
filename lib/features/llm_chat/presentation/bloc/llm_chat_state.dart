part of 'llm_chat_bloc.dart';

@freezed
class LlmChatState with _$LlmChatState {
  const factory LlmChatState.initial() = _Initial;
  const factory LlmChatState.loading() = _Loading;
  const factory LlmChatState.loaded({
    required List<ChatDomainMessage> messages,
    String? errorMessage,
  }) = _Loaded;
}
