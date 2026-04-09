import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/theme/styles/custom_text_style.dart';
import 'package:baby_vaccination/features/llm_chat/domain/use_cases/get_chat_response_use_case.dart';
import 'package:baby_vaccination/features/llm_chat/presentation/widgets/gemini_chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:get_it/get_it.dart';

class LlmChatScreen extends StatelessWidget {
  const LlmChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentTheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'TinyShield Nurse Assistant',
              style: CustomTextStyle.h4Bold.copyWith(
                color: currentTheme.primary500,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'HEALTH CONCIERGE',
              style: CustomTextStyle.labelSmall.copyWith(
                color: currentTheme.onSurface.withValues(alpha: 0.5),
                letterSpacing: 1.2,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: currentTheme.onSurface),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: currentTheme.onSurface.withValues(alpha: 0.4),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: LlmChatView(
        provider: GeminiChatProvider(GetIt.I<GetChatResponseUseCase>()),
        welcomeMessage:
            'Hello! I am your TinyShield virtual pediatric nurse. How can I assist you with your child\'s health and vaccination journey today?',
        suggestions: const [
          'What are the common side effects of MMR?',
          'How to soothe my baby after a shot?',
          'When is the next dose for DTaP?',
        ],
        style: LlmChatViewStyle(
          backgroundColor: currentTheme.surface,
          userMessageStyle: UserMessageStyle(
            decoration: BoxDecoration(
              color: currentTheme.primary500,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          llmMessageStyle: LlmMessageStyle(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
