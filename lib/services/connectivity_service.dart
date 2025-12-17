import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';

class ConnectivityService {
  static bool isConnected = true;
  static bool noInternetShown = false;

  static late StreamSubscription<List<ConnectivityResult>> subscription;

  static void startListening() {
    subscription =
        Connectivity().onConnectivityChanged.listen((results) {
          final result =
          results.isNotEmpty ? results.first : ConnectivityResult.none;

          if (result == ConnectivityResult.mobile ||
              result == ConnectivityResult.wifi) {
            isConnected = true;
            print('Internet Connected');

            if (noInternetShown) {
              noInternetShown = false;
              appRoute.pop();
            }
          } else {
            isConnected = false;
            print('No Internet');

            if (!noInternetShown) {
              noInternetShown = true;
              appRoute.push('/NoInternetScreen');
            }
          }
        });
  }

  static void dispose() {
    subscription.cancel();
  }
}
