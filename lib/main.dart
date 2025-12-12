import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,

        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: BottomNavigationBarClass(),
      // home: TestChartRightSide(),
    );
  }
}
