import 'package:baby_vaccination/src/app_root.dart';
import 'package:baby_vaccination/src/bloc_observer.dart';
import 'package:baby_vaccination/core/services/storage/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/di/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  await HiveService.init();
  Gemini.init(apiKey: dotenv.env["GEMINI_API_KEY"]!);
  configureDependencies();

  runApp(const MyApp());
}
