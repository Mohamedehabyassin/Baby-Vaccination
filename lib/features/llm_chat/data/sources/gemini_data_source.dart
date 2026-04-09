import 'package:baby_vaccination/core/services/gemini/gemini_service.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:injectable/injectable.dart';

abstract class IGeminiDataSource {
  Future<String?> chat(List<Content> history);
}

@LazySingleton(as: IGeminiDataSource)
class GeminiDataSourceImpl implements IGeminiDataSource {
  GeminiDataSourceImpl(this._geminiService);
  final GeminiService _geminiService;

  @override
  Future<String?> chat(List<Content> history) async {
    return _geminiService.chat(history);
  }
}
