import 'package:go_router/go_router.dart';
import 'package:mks_task2_tradingbuddy/screen/authentication/login_screen.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/message.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/no_internet.dart';
import 'package:mks_task2_tradingbuddy/screen/splash/splash_screen.dart';

import '../screen/mainScreens/bottom_navigation_bar.dart';
import '../screen/mainScreens/home_screen.dart';
import '../screen/mainScreens/live_sessions.dart';
import '../screen/mainScreens/tap_to_trade.dart';
import '../screen/mainScreens/trade_alerts.dart';

final GoRouter appRoute = GoRouter(
  initialLocation: '/SplashScreen',

  routes: [
    GoRoute(path: '/SplashScreen', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/LoginScreen', builder: (context, state) => LoginScreen()),
    GoRoute(
      path: '/NoInternetScreen',
      builder: (context, state) => NoInternetScreen(),
    ),
    GoRoute(path: '/Message', builder: (context, state) => Message()),

    ShellRoute(
      builder: (context, state, child) {
        return BottomNavigationBarClass(child: child);
      },
      routes: [
        GoRoute(path: '/HomeScreen', builder: (context, state) => HomeScreen()),
        GoRoute(
          path: '/LiveSessions',
          builder: (context, state) => LiveSessions(),
        ),
        GoRoute(
          path: '/TradeAlerts',
          builder: (context, state) => TradeAlerts(),
        ),
        GoRoute(path: '/TapToTrade', builder: (context, state) => TapToTrade()),
      ],
    ),
  ],
);
