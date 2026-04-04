import 'package:baby_vaccination/core/domain/injection/injection.config.dart';
import 'package:baby_vaccination/src/app_root.dart';
import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/domain/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  configureDependencies();
  getIt.initSignInScope();
  runApp(MyApp());
}
