import 'package:get_it/get_it.dart';
import 'dispose_interface.dart' as d;

extension GetItExtensions on GetIt {
  void registerSingletonSafely<T extends Object>(T instance) {
    if (!isRegistered<T>()) {
      registerSingleton<T>(instance);
    }
  }

  void registerLazySingletonSafely<T extends Object>(
    FactoryFunc<T> factoryFunc,
  ) {
    if (!isRegistered<T>()) {
      registerLazySingleton<T>(factoryFunc);
    }
  }

  void registerFactorySafely<T extends Object>(FactoryFunc<T> factoryFunc) {
    if (!isRegistered<T>()) {
      registerFactory<T>(factoryFunc);
    }
  }

  void unregisterSafely<T extends Object>() {
    if (isRegistered<T>()) {
      unregister<T>();
    }
  }

  void _unregisterAndDispose<T extends Object>() {
    if (isRegistered<T>()) {
      final instance = get<T>();

      if (instance is d.Disposable) {
        instance.dispose();
      }

      unregister<T>();
    }
  }

  void registerReplaceableInstance<T extends Object>(T newInstance) {
    _unregisterAndDispose<T>();
    registerSingleton<T>(newInstance);
  }
}
