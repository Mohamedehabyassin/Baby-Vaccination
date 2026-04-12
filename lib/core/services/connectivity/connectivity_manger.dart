import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ConnectivityManager {
  Future<bool> get isConnected async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity()
        .checkConnectivity());
    return connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile);
  }
}
