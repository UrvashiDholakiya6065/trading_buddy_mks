import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';
import 'package:mks_task2_tradingbuddy/services/connectivity_service.dart';
import '../../sesstionManage/shared_pref.dart';
import '../../utils/common_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String status = "Checking...";
  late StreamSubscription<List<ConnectivityResult>> subscription;

  @override
  void initState() {
    super.initState();

    print('Internet status: ${ConnectivityService.isConnected}');
    checkLogin();
  }

  void checkLogin() async {
    bool isLogin = await SharedPref().getUserDataPref();
    await Future.delayed(Duration(seconds: 2));

    if (isLogin) {
      appRoute.go('/HomeScreen');
    } else {
      appRoute.go('/LoginScreen');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: isDarkTheme
          ? Center(
              child: SvgPicture.asset(
                'assets/imageSvg/img.svg',
                fit: BoxFit.contain,
              ),
            )
          : Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      'assets/imagePng/tradingIcon.png',
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 6),
                  Image.asset(
                    'assets/imagePng/TradingBuddy.png',
                    height: 34,
                    fit: BoxFit.contain,
                    color: CommonColorClassDarkTheme.mainAppColor,
                  ),
                ],
              ),
            ),
    );
  }
}
