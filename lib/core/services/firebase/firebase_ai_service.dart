import 'package:firebase_ai/firebase_ai.dart';

class FirebaseAIService {
  final model = FirebaseAI.googleAI().generativeModel(
    model: 'gemini-3-flash-preview',
  );

  Future<String> sendMessage(String message) async {
    final response = await model.generateContent([Content.text(message)]);
    return response.text ?? '';
  }
}

// import 'package:firebase_ai/firebase_ai.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'package:your_audio_recorder_package/your_audio_recorder_package.dart';

// late LiveModelSession _session;
// final _audioRecorder = YourAudioRecorder();

// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );

// // Initialize the Gemini Developer API backend service
// // Create a `liveGenerativeModel` instance with a model that supports the Live API
// final liveModel = FirebaseAI.googleAI().liveGenerativeModel(
//   model: 'gemini-2.5-flash-native-audio-preview-12-2025',
//   // Configure the model to respond with audio
//   liveGenerationConfig: LiveGenerationConfig(
//     responseModalities: [ResponseModalities.audio],
//   ),
// );

// _session = await liveModel.connect();

// final audioRecordStream = _audioRecorder.startRecordingStream();
// // Map the Uint8List stream to InlineDataPart stream
// final mediaChunkStream = audioRecordStream.map((data) {
//   return InlineDataPart('audio/pcm', data);
// });
// await _session.startMediaStream(mediaChunkStream);

// // In a separate thread, receive the audio response from the model
// await for (final message in _session.receive()) {
//    // Process the received message
// }
