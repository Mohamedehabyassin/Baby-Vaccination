import 'package:baby_vaccination/core/domain/injection/injection.config.dart';
import 'package:baby_vaccination/src/app_root.dart';
import 'package:baby_vaccination/src/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:baby_vaccination/core/domain/injection/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp();
  configureDependencies();
  getIt.initSignInScope();
  getIt.initSignUpScope();
  runApp(MyApp());
}
