import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GeminiService {
  final Gemini _gemini = Gemini.instance;

  /// Generic text generation
  Future<String?> generateText(String prompt) async {
    try {
      final value = await _gemini.prompt(parts: [Part.text(prompt)]);
      return value?.output;
    } catch (e) {
      return null;
    }
  }

  /// Multi-turn chat
  Future<String?> chat(List<Content> history) async {
    try {
      final value = await _gemini.chat(history);
      return value?.output;
    } catch (e) {
      return null;
    }
  }

  /// Analyze image and text
  Future<String?> analyzeImage(String text, List<Uint8List> images) async {
    try {
      final value = await _gemini.prompt(
        parts: [
          Part.text(text),
          ...images.map(
            (i) => Part.inline(
              InlineData(data: base64Encode(i), mimeType: 'image/jpeg'),
            ),
          ),
        ],
      );
      return value?.output;
    } catch (e) {
      return null;
    }
  }

  /// Specific Vaccine Advice
  Future<String?> getVaccineAdvice({
    required String childName,
    required String childAge,
    required String vaccineName,
  }) async {
    final prompt =
        """
      You are a friendly and professional pediatric nurse assistant for an app called TinyShield.
      The child's name is $childName and they are $childAge old.
      They are scheduled for the $vaccineName vaccine.
      
      Provide a concise 3-sentence summary covering:
      1. What this vaccine protects against.
      2. Common mild side effects to watch for.
      3. A comforting tip for the parent.
      
      Keep the tone reassuring and simplified for parents.
    """;
    return generateText(prompt);
  }

  /// Answer General Parent Questions
  Future<String?> answerParentQuestion(String question) async {
    final prompt =
        """
      You are TinyShield AI, an expert in child healthcare and vaccinations.
      Answer the following parent's question concisely and accurately:
      
      Question: $question
      
      Important: Always include a disclaimer that this is AI advice and they should consult their pediatrician for medical decisions.
    """;
    return generateText(prompt);
  }

  /// Summarize Vaccine Side Effects
  Future<String?> summarizeSideEffects(String vaccineName) async {
    final prompt =
        "List the common, rare and severe side effects of $vaccineName vaccine in a bulleted list for a parent to read.";
    return generateText(prompt);
  }
}
