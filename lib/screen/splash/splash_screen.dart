  import 'dart:async';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:connectivity_plus/connectivity_plus.dart';
  import 'package:mks_task2_tradingbuddy/screen/mainScreens/no_internet.dart';
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

      subscription = Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
        final result = results.isNotEmpty ? results.first : ConnectivityResult.none;

        print("Result 1- $result");
        updateStatus(result);
      });

    }
    void updateStatus(ConnectivityResult result) async {

      if (!mounted) return;

      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {

        setState(() {
          status = "Internet Connected";

       Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          );
        });

      } else {
        setState(() {
          status = "No Internet";
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NoInternetScreen()),
          );

        });


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
