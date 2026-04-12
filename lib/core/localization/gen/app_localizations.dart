import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInWithEmailAndPassword.
  ///
  /// In en, this message translates to:
  /// **'Sign In With Email And Password'**
  String get signInWithEmailAndPassword;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign In With Google'**
  String get signInWithGoogle;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgetPassword;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @upcomingVaccines.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcomingVaccines;

  /// No description provided for @babies.
  ///
  /// In en, this message translates to:
  /// **'Babies'**
  String get babies;

  /// No description provided for @facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get facilities;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Email'**
  String get enterYourEmail;

  /// No description provided for @enterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password'**
  String get enterYourPassword;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Name'**
  String get enterYourName;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Phone Number'**
  String get enterYourPhoneNumber;

  /// No description provided for @enterYourGender.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Gender'**
  String get enterYourGender;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get alreadyHaveAccount;

  /// No description provided for @appSubtitle.
  ///
  /// In en, this message translates to:
  /// **'THE NURTURING GUARDIAN'**
  String get appSubtitle;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good morning,'**
  String get goodMorning;

  /// No description provided for @protectionOnTrack.
  ///
  /// In en, this message translates to:
  /// **'Protection is on track.'**
  String get protectionOnTrack;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'UPCOMING'**
  String get upcoming;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @dueDate.
  ///
  /// In en, this message translates to:
  /// **'Due: {date}'**
  String dueDate(String date);

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'VIEW ALL'**
  String get viewAll;

  /// No description provided for @logVaccine.
  ///
  /// In en, this message translates to:
  /// **'Log a vaccine'**
  String get logVaccine;

  /// No description provided for @addChild.
  ///
  /// In en, this message translates to:
  /// **'Add child'**
  String get addChild;

  /// No description provided for @findClinic.
  ///
  /// In en, this message translates to:
  /// **'Find a clinic'**
  String get findClinic;

  /// No description provided for @shieldStrength.
  ///
  /// In en, this message translates to:
  /// **'Shield Strength'**
  String get shieldStrength;

  /// No description provided for @milestonesCompleted.
  ///
  /// In en, this message translates to:
  /// **'{completed} of {total} milestones completed'**
  String milestonesCompleted(int completed, int total);

  /// No description provided for @protectedAgainst.
  ///
  /// In en, this message translates to:
  /// **'{name} is currently protected against '**
  String protectedAgainst(String name);

  /// No description provided for @protectedDiseases.
  ///
  /// In en, this message translates to:
  /// **'Polio, HepB, and Pneumococcal'**
  String get protectedDiseases;

  /// No description provided for @diseasesSuffix.
  ///
  /// In en, this message translates to:
  /// **' diseases.'**
  String get diseasesSuffix;

  /// No description provided for @resources.
  ///
  /// In en, this message translates to:
  /// **'RESOURCES'**
  String get resources;

  /// No description provided for @assistance.
  ///
  /// In en, this message translates to:
  /// **'ASSISTANCE'**
  String get assistance;

  /// No description provided for @sideEffectsGuide.
  ///
  /// In en, this message translates to:
  /// **'Vaccine Side Effects Guide'**
  String get sideEffectsGuide;

  /// No description provided for @talkToNurse.
  ///
  /// In en, this message translates to:
  /// **'Talk to a Pediatric Nurse'**
  String get talkToNurse;

  /// No description provided for @upcomingVaccineTitle.
  ///
  /// In en, this message translates to:
  /// **'6-Month Checkup - Rotavirus & DTaP'**
  String get upcomingVaccineTitle;

  /// No description provided for @locationServiceDisabled.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get locationServiceDisabled;

  /// No description provided for @locationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied.'**
  String get locationPermissionDenied;

  /// No description provided for @locationPermissionDeniedForever.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied forever.'**
  String get locationPermissionDeniedForever;

  /// No description provided for @locationPermissionRestricted.
  ///
  /// In en, this message translates to:
  /// **'Location permission restricted.'**
  String get locationPermissionRestricted;

  /// No description provided for @locationPermissionUnableToDetermine.
  ///
  /// In en, this message translates to:
  /// **'Location permission unable to determine.'**
  String get locationPermissionUnableToDetermine;

  /// No description provided for @locationFetchException.
  ///
  /// In en, this message translates to:
  /// **'Location fetch exception.'**
  String get locationFetchException;

  /// No description provided for @locationServiceDisabledMessage.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get locationServiceDisabledMessage;

  /// No description provided for @locationPermissionDeniedMessage.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied.'**
  String get locationPermissionDeniedMessage;

  /// No description provided for @locationPermissionDeniedForeverMessage.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied forever.'**
  String get locationPermissionDeniedForeverMessage;

  /// No description provided for @locationPermissionRestrictedMessage.
  ///
  /// In en, this message translates to:
  /// **'Location permission restricted.'**
  String get locationPermissionRestrictedMessage;

  /// No description provided for @locationPermissionUnableToDetermineMessage.
  ///
  /// In en, this message translates to:
  /// **'Location permission unable to determine.'**
  String get locationPermissionUnableToDetermineMessage;

  /// No description provided for @locationFetchExceptionMessage.
  ///
  /// In en, this message translates to:
  /// **'Location fetch exception.'**
  String get locationFetchExceptionMessage;

  /// No description provided for @locationServiceDisabledTitle.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get locationServiceDisabledTitle;

  /// No description provided for @locationPermissionDeniedTitle.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied.'**
  String get locationPermissionDeniedTitle;

  /// No description provided for @locationPermissionDeniedForeverTitle.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied forever.'**
  String get locationPermissionDeniedForeverTitle;

  /// No description provided for @locationPermissionRestrictedTitle.
  ///
  /// In en, this message translates to:
  /// **'Location permission restricted.'**
  String get locationPermissionRestrictedTitle;

  /// No description provided for @locationPermissionUnableToDetermineTitle.
  ///
  /// In en, this message translates to:
  /// **'Location permission unable to determine.'**
  String get locationPermissionUnableToDetermineTitle;

  /// No description provided for @locationFetchExceptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Location fetch exception.'**
  String get locationFetchExceptionTitle;

  /// No description provided for @locationServiceDisabledAction.
  ///
  /// In en, this message translates to:
  /// **'Enable Location Services'**
  String get locationServiceDisabledAction;

  /// No description provided for @locationPermissionDeniedAction.
  ///
  /// In en, this message translates to:
  /// **'Request Permission'**
  String get locationPermissionDeniedAction;

  /// No description provided for @locationPermissionDeniedForeverAction.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get locationPermissionDeniedForeverAction;

  /// No description provided for @locationPermissionRestrictedAction.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get locationPermissionRestrictedAction;

  /// No description provided for @locationPermissionUnableToDetermineAction.
  ///
  /// In en, this message translates to:
  /// **'Request Permission'**
  String get locationPermissionUnableToDetermineAction;

  /// No description provided for @locationFetchExceptionAction.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get locationFetchExceptionAction;

  /// No description provided for @boy.
  ///
  /// In en, this message translates to:
  /// **'Boy'**
  String get boy;

  /// No description provided for @girl.
  ///
  /// In en, this message translates to:
  /// **'Girl'**
  String get girl;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @addYourLittleOne.
  ///
  /// In en, this message translates to:
  /// **'Add Your Little One'**
  String get addYourLittleOne;

  /// No description provided for @manageBabySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Let’s start building your child’s protective shield. Provide a few details to customize their health timeline.'**
  String get manageBabySubtitle;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'FULL NAME'**
  String get fullName;

  /// No description provided for @enterName.
  ///
  /// In en, this message translates to:
  /// **'Enter name'**
  String get enterName;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'DATE OF BIRTH'**
  String get dateOfBirth;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @healthEssentials.
  ///
  /// In en, this message translates to:
  /// **'Health Essentials'**
  String get healthEssentials;

  /// No description provided for @importantForEmergencyRecords.
  ///
  /// In en, this message translates to:
  /// **'Important for emergency records'**
  String get importantForEmergencyRecords;

  /// No description provided for @bloodType.
  ///
  /// In en, this message translates to:
  /// **'BLOOD TYPE'**
  String get bloodType;

  /// No description provided for @saveAndStartTracking.
  ///
  /// In en, this message translates to:
  /// **'Save & Start Tracking'**
  String get saveAndStartTracking;

  /// No description provided for @yourDataIsSecured.
  ///
  /// In en, this message translates to:
  /// **'Your data is secured.'**
  String get yourDataIsSecured;

  /// No description provided for @encryptedMedicalJournals.
  ///
  /// In en, this message translates to:
  /// **'End-to-end encrypted medical journals for your child\'s milestones.'**
  String get encryptedMedicalJournals;

  /// No description provided for @pleaseFillAllDetails.
  ///
  /// In en, this message translates to:
  /// **'Please fill all the details'**
  String get pleaseFillAllDetails;

  /// No description provided for @unauthenticated.
  ///
  /// In en, this message translates to:
  /// **'Unauthenticated'**
  String get unauthenticated;

  /// No description provided for @babyDetails.
  ///
  /// In en, this message translates to:
  /// **'Baby Details'**
  String get babyDetails;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// No description provided for @noBabiesFound.
  ///
  /// In en, this message translates to:
  /// **'No babies found'**
  String get noBabiesFound;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
