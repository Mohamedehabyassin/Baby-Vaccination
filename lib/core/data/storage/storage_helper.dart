import 'package:baby_vaccination/core/data/storage/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelper {
  static final FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions.defaultOptions,
    iOptions: IOSOptions.defaultOptions,
  );

  static Future<String?> read<T>(StorageKeys key) async {
    return await _storage.read(key: key.name);
  }

  static Future<void> write(StorageKeys key, String? value) async {
    return await _storage.write(key: key.name, value: value);
  }

  static Future<void> delete(StorageKeys key) async {
    return await _storage.delete(key: key.name);
  }

  static Future<void> deleteAll() async {
    return await _storage.deleteAll();
  }
}
