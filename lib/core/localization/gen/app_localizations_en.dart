// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signInWithEmailAndPassword => 'Sign In With Email And Password';

  @override
  String get signInWithGoogle => 'Sign In With Google';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get forgetPassword => 'Forgot Password?';

  @override
  String get home => 'Home';

  @override
  String get upcomingVaccines => 'Upcoming';

  @override
  String get babies => 'Babies';

  @override
  String get facilities => 'Facilities';

  @override
  String get profile => 'Profile';

  @override
  String get enterYourEmail => 'Enter Your Email';

  @override
  String get enterYourPassword => 'Enter Your Password';

  @override
  String get signUp => 'Sign Up';

  @override
  String get name => 'Name';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get gender => 'Gender';

  @override
  String get enterYourName => 'Enter Your Name';

  @override
  String get enterYourPhoneNumber => 'Enter Your Phone Number';

  @override
  String get enterYourGender => 'Enter Your Gender';

  @override
  String get dontHaveAccount => 'Don\'t have an account? ';

  @override
  String get alreadyHaveAccount => 'Already have an account? ';

  @override
  String get appSubtitle => 'THE NURTURING GUARDIAN';

  @override
  String get goodMorning => 'Good morning,';

  @override
  String get protectionOnTrack => 'Protection is on track.';

  @override
  String get upcoming => 'UPCOMING';

  @override
  String get viewDetails => 'View Details';

  @override
  String dueDate(String date) {
    return 'Due: $date';
  }

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get viewAll => 'VIEW ALL';

  @override
  String get logVaccine => 'Log a vaccine';

  @override
  String get addChild => 'Add child';

  @override
  String get findClinic => 'Find a clinic';

  @override
  String get shieldStrength => 'Shield Strength';

  @override
  String milestonesCompleted(int completed, int total) {
    return '$completed of $total milestones completed';
  }

  @override
  String protectedAgainst(String name) {
    return '$name is currently protected against ';
  }

  @override
  String get protectedDiseases => 'Polio, HepB, and Pneumococcal';

  @override
  String get diseasesSuffix => ' diseases.';

  @override
  String get resources => 'RESOURCES';

  @override
  String get assistance => 'ASSISTANCE';

  @override
  String get sideEffectsGuide => 'Vaccine Side Effects Guide';

  @override
  String get talkToNurse => 'Talk to a Pediatric Nurse';

  @override
  String get upcomingVaccineTitle => '6-Month Checkup - Rotavirus & DTaP';

  @override
  String get locationServiceDisabled => 'Location services are disabled.';

  @override
  String get locationPermissionDenied => 'Location permission denied.';

  @override
  String get locationPermissionDeniedForever =>
      'Location permission denied forever.';

  @override
  String get locationPermissionRestricted => 'Location permission restricted.';

  @override
  String get locationPermissionUnableToDetermine =>
      'Location permission unable to determine.';

  @override
  String get locationFetchException => 'Location fetch exception.';

  @override
  String get locationServiceDisabledMessage =>
      'Location services are disabled.';

  @override
  String get locationPermissionDeniedMessage => 'Location permission denied.';

  @override
  String get locationPermissionDeniedForeverMessage =>
      'Location permission denied forever.';

  @override
  String get locationPermissionRestrictedMessage =>
      'Location permission restricted.';

  @override
  String get locationPermissionUnableToDetermineMessage =>
      'Location permission unable to determine.';

  @override
  String get locationFetchExceptionMessage => 'Location fetch exception.';

  @override
  String get locationServiceDisabledTitle => 'Location services are disabled.';

  @override
  String get locationPermissionDeniedTitle => 'Location permission denied.';

  @override
  String get locationPermissionDeniedForeverTitle =>
      'Location permission denied forever.';

  @override
  String get locationPermissionRestrictedTitle =>
      'Location permission restricted.';

  @override
  String get locationPermissionUnableToDetermineTitle =>
      'Location permission unable to determine.';

  @override
  String get locationFetchExceptionTitle => 'Location fetch exception.';

  @override
  String get locationServiceDisabledAction => 'Enable Location Services';

  @override
  String get locationPermissionDeniedAction => 'Request Permission';

  @override
  String get locationPermissionDeniedForeverAction => 'Open Settings';

  @override
  String get locationPermissionRestrictedAction => 'Open Settings';

  @override
  String get locationPermissionUnableToDetermineAction => 'Request Permission';

  @override
  String get locationFetchExceptionAction => 'Retry';

  @override
  String get boy => 'Boy';

  @override
  String get girl => 'Girl';

  @override
  String get other => 'Other';

  @override
  String get addYourLittleOne => 'Add Your Little One';

  @override
  String get addBabySubtitle =>
      'Let’s start building your child’s protective shield. Provide a few details to customize their health timeline.';

  @override
  String get fullName => 'FULL NAME';

  @override
  String get enterName => 'Enter name';

  @override
  String get dateOfBirth => 'DATE OF BIRTH';

  @override
  String get select => 'Select';

  @override
  String get healthEssentials => 'Health Essentials';

  @override
  String get importantForEmergencyRecords => 'Important for emergency records';

  @override
  String get bloodType => 'BLOOD TYPE';

  @override
  String get saveAndStartTracking => 'Save & Start Tracking';

  @override
  String get yourDataIsSecured => 'Your data is secured.';

  @override
  String get encryptedMedicalJournals =>
      'End-to-end encrypted medical journals for your child\'s milestones.';

  @override
  String get pleaseFillAllDetails => 'Please fill all the details';

  @override
  String get unauthenticated => 'Unauthenticated';

  @override
  String get babyDetails => 'Baby Details';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get noBabiesFound => 'No babies found';
}
