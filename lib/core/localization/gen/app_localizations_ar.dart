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

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get forgetPassword => 'نسيت كلمة المرور؟';

  @override
  String get home => 'الرئيسية';

  @override
  String get upcomingVaccines => 'القادمة';

  @override
  String get babies => 'الأطفال';

  @override
  String get facilities => 'المرافق';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get enterYourEmail => 'أدخل بريدك الإلكتروني';

  @override
  String get enterYourPassword => 'أدخل كلمة المرور';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get name => 'الاسم';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get gender => 'الجنس';

  @override
  String get enterYourName => 'أدخل اسمك';

  @override
  String get enterYourPhoneNumber => 'أدخل رقم هاتفك';

  @override
  String get enterYourGender => 'أدخل جنسك';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟ ';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟ ';

  @override
  String get appSubtitle => 'الحامي الحنون';

  @override
  String get goodMorning => 'صباح الخير،';

  @override
  String get protectionOnTrack => 'الحماية في مسارها الصحيح.';

  @override
  String get upcoming => 'القادم';

  @override
  String get viewDetails => 'عرض التفاصيل';

  @override
  String dueDate(String date) {
    return 'تاريخ الاستحقاق: $date';
  }

  @override
  String get quickActions => 'الإجراءات السريعة';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get logVaccine => 'تسجيل لقاح';

  @override
  String get addChild => 'إضافة طفل';

  @override
  String get findClinic => 'البحث عن عيادة';

  @override
  String get shieldStrength => 'قوة الدرع';

  @override
  String milestonesCompleted(int completed, int total) {
    return '$completed من $total مراحل مكتملة';
  }

  @override
  String protectedAgainst(String name) {
    return '$name محمي حالياً ضد ';
  }

  @override
  String get protectedDiseases =>
      'شلل الأطفال، التهاب الكبد ب، والمكورات الرئوية';

  @override
  String get diseasesSuffix => ' الأمراض.';

  @override
  String get resources => 'الموارد';

  @override
  String get assistance => 'المساعدة';

  @override
  String get sideEffectsGuide => 'دليل الآثار الجانبية للقاح';

  @override
  String get talkToNurse => 'تحدث مع ممرضة أطفال';

  @override
  String get upcomingVaccineTitle => 'فحص 6 أشهر - لقاح الروتا و DTaP';

  @override
  String get locationServiceDisabled => 'خدمات الموقع معطلة.';

  @override
  String get locationPermissionDenied => 'تم رفض إذن الموقع.';

  @override
  String get locationPermissionDeniedForever => 'تم رفض إذن الموقع بشكل دائم.';

  @override
  String get locationPermissionRestricted => 'إذن الموقع مقيد.';

  @override
  String get locationPermissionUnableToDetermine => 'تعذر تحديد إذن الموقع.';

  @override
  String get locationFetchException => 'حدث خطأ في جلب الموقع.';

  @override
  String get locationServiceDisabledMessage => 'خدمات الموقع معطلة.';

  @override
  String get locationPermissionDeniedMessage => 'تم رفض إذن الموقع.';

  @override
  String get locationPermissionDeniedForeverMessage =>
      'تم رفض إذن الموقع بشكل دائم.';

  @override
  String get locationPermissionRestrictedMessage => 'إذن الموقع مقيد.';

  @override
  String get locationPermissionUnableToDetermineMessage =>
      'تعذر تحديد إذن الموقع.';

  @override
  String get locationFetchExceptionMessage => 'حدث خطأ في جلب الموقع.';

  @override
  String get locationServiceDisabledTitle => 'خدمات الموقع معطلة.';

  @override
  String get locationPermissionDeniedTitle => 'تم رفض إذن الموقع.';

  @override
  String get locationPermissionDeniedForeverTitle =>
      'تم رفض إذن الموقع بشكل دائم.';

  @override
  String get locationPermissionRestrictedTitle => 'إذن الموقع مقيد.';

  @override
  String get locationPermissionUnableToDetermineTitle =>
      'تعذر تحديد إذن الموقع.';

  @override
  String get locationFetchExceptionTitle => 'حدث خطأ في جلب الموقع.';

  @override
  String get locationServiceDisabledAction => 'تمكين خدمات الموقع';

  @override
  String get locationPermissionDeniedAction => 'طلب الإذن';

  @override
  String get locationPermissionDeniedForeverAction => 'فتح الإعدادات';

  @override
  String get locationPermissionRestrictedAction => 'فتح الإعدادات';

  @override
  String get locationPermissionUnableToDetermineAction => 'طلب الإذن';

  @override
  String get locationFetchExceptionAction => 'إعادة المحاولة';

  @override
  String get boy => 'ولد';

  @override
  String get girl => 'بنت';

  @override
  String get other => 'آخر';

  @override
  String get addYourLittleOne => 'أضف طفلك الصغير';

  @override
  String get manageBabySubtitle =>
      'لنبدأ في بناء درع طفلك الواقي. قدم بعض التفاصيل لتخصيص جدوله الزمني الصحي.';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get enterName => 'أدخل الاسم';

  @override
  String get dateOfBirth => 'تاريخ الميلاد';

  @override
  String get select => 'اختيار';

  @override
  String get healthEssentials => 'أساسيات الصحة';

  @override
  String get importantForEmergencyRecords => 'مهم في السجلات الطبية الطارئة';

  @override
  String get bloodType => 'فصيلة الدم';

  @override
  String get saveAndStartTracking => 'حفظ والبدء في التتبع';

  @override
  String get yourDataIsSecured => 'بياناتك آمنة.';

  @override
  String get encryptedMedicalJournals => 'سجلات طبية مشفرة لمراحل نمو طفلك.';

  @override
  String get pleaseFillAllDetails => 'يرجى ملء جميع التفاصيل';

  @override
  String get unauthenticated => 'غير مصادق';

  @override
  String get babyDetails => 'تفاصيل الطفل';

  @override
  String get unknownError => 'خطأ غير معروف';

  @override
  String get noBabiesFound => 'لم يتم العثور على أطفال';

  @override
  String get retry => 'إعادة المحاولة';
}
