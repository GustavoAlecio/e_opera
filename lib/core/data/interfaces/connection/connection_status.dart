import 'dart:async';
import 'dart:io';

/// Class with verify aways if device has connected on internet
class ConnectionStatusSingleton {
  static final ConnectionStatusSingleton _singleton =
      ConnectionStatusSingleton._internal();
  ConnectionStatusSingleton._internal();

  /// Factoty to singleton
  factory ConnectionStatusSingleton() {
    return _singleton;
  }

  ///The test to actually see if there is a connection
  Future<bool> call() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
