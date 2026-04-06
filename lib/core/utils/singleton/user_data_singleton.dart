import 'package:baby_vaccination/core/storage/storage_helper.dart';
import 'package:baby_vaccination/core/storage/storage_keys.dart';
import 'package:baby_vaccination/core/utils/extensions/string_extension.dart';

import 'package:baby_vaccination/core/constants/enums.dart';

class UserDataSingleton {
  factory UserDataSingleton() {
    return _singleton;
  }
  UserDataSingleton._internal();

  static final UserDataSingleton _singleton = UserDataSingleton._internal();
  static String? _token;
  static String? get token => _token;

  static Future<void> fetchCachedToken() async {
    try {
      _token = await StorageHelper.read(StorageKeys.token);
    } catch (e) {
      _token = null;
    }
  }

  static Future<void> setToken(String? value) async {
    _token = value;
    await StorageHelper.write(StorageKeys.token, value);
  }

  static Future<void> deleteToken() async {
    _token = null;
    await StorageHelper.delete(StorageKeys.token);
  }

  static String? _language;
  static String? get language => _language;
  static set languageSetter(String value) {
    _language = value;
  }

  static String currency = "\$";
  static bool isUserCompleteTutorial = false;

  static Future<void> fetchCachedTutorial() async {
    try {
      final value = await StorageHelper.read(StorageKeys.tutorial);
      if (value.isValid) {
        UserDataSingleton.isUserCompleteTutorial = bool.parse(value!);
      }
    } catch (e) {
      UserDataSingleton.isUserCompleteTutorial = false;
    }
  }

  static UserType _userType = UserType.guest;
  static UserType get userType => _userType;
  static set userTypeSetter(UserType value) {
    _userType = value;
  }

  static bool get isGuest => _userType == UserType.guest;
}
