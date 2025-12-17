  import 'dart:async';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';
  import 'package:mks_task2_tradingbuddy/screen/mainScreens/no_internet.dart';
import 'package:mks_task2_tradingbuddy/services/connectivity_service.dart';
  import '../../sesstionManage/shared_pref.dart';
import '../authentication/login_screen.dart';

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
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
              child: SvgPicture.asset('assets/imageSvg/img.svg'),
            ),
          ],
        ),
      );
    }
  }
