part of 'llm_chat_bloc.dart';

@freezed
class LlmChatEvent with _$LlmChatEvent {
  const factory LlmChatEvent.sendMessage(String text) = _SendMessage;
  const factory LlmChatEvent.clearChat() = _ClearChat;
}
