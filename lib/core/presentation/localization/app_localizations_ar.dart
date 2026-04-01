// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signInWithEmailAndPassword =>
      'تسجيل الدخول بالبريد الإلكتروني وكلمة المرور';

  @override
  String get signInWithGoogle => 'تسجيل الدخول بالجوجل';
}
