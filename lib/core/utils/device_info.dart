// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

String APP_VERSION = '1.0.0';

class DeviceInfo {
  static final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  static const AndroidId _androidIdPlugin = AndroidId();

  static String deviceData = '';
  static String androidId = '';
  static String deviceId = '';
  static String deviceName = '';
  static String APP_VERSION = '1.0.0';

  Future<void> init() async {}

  static Future<void> getDeviceInfo() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();

      APP_VERSION = packageInfo.version;
      if (Platform.isAndroid) {
        androidId = await _androidIdPlugin.getId() ?? '';
        deviceId = androidId;
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

        deviceData =
            '$APP_VERSION-$androidId-${androidInfo.version.sdkInt}-${androidInfo.manufacturer}-${androidInfo.model}';
        deviceName = '${androidInfo.manufacturer} ${androidInfo.model}';
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        deviceId = iosInfo.identifierForVendor!;

        deviceData =
            '$APP_VERSION-${iosInfo.identifierForVendor}-${iosInfo.utsname.version}-${iosInfo.utsname.machine}';
        deviceName = iosInfo.name;
      }
    } catch (error) {
      debugPrint("DeviceInfo => getDeviceInfo error: $error");
    }
  }
}
