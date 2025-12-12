import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/tap_to_trade.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/trade_alerts.dart';

import '../../utils/common_color.dart';
import 'home_screen.dart';
import 'live_sessions.dart';


class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({super.key});

  @override
  State<BottomNavigationBarClass> createState() =>
      _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  int index = 0;

  final pages = [
    HomeScreen(),
    LiveSessions(),
    TradeAlerts(),
    TapToTrade()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF0E0E0E),
      body: pages[index],

      bottomNavigationBar: Container(
        height: 78,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration:  BoxDecoration(
          color: Color(0xFF0E0E0E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Expanded(child: navItem('assets/imagePng/home.png', "Home", 0)),
            Expanded(child: navItem('assets/imagePng/sessions.png', "Sessions", 1)),
            Expanded(child: navItem('assets/imagePng/alarm.png', "Trade Alerts", 2)),
            Expanded(child: navItem('assets/imagePng/mouse_circle.png', "Tap to Trade", 3)),
          ],
        ),
      ),
    );
  }

  Widget navItem(String iconImage, String label, int indexI) {
    bool selected = index == indexI;

    return GestureDetector(
      onTap: () => setState(() => index = indexI),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: selected ?  Color(0xFF2B1507) : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),

        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage(iconImage),height: 22,color: selected?CommonColorClass.mainAppColor:Colors.grey,),

               SizedBox(height: 3),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  color: selected ? CommonColorClass.mainAppColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
