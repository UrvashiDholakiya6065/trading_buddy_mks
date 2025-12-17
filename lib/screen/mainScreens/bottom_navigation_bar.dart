import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/common_color.dart';

class BottomNavigationBarClass extends StatelessWidget {
  final Widget child;
  const BottomNavigationBarClass({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final path = GoRouterState.of(context).uri.path;
    print("Path :::$path");

    int selectedIndex = 0;
    switch (path) {
      case '/HomeScreen':
        selectedIndex = 0;
        break;
      case '/LiveSessions':
        selectedIndex = 1;
        break;
      case '/TradeAlerts':
        selectedIndex = 2;
        break;
      case '/TapToTrade':
        selectedIndex = 3;
        break;
    }

    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: child,
      bottomNavigationBar: Container(
        height: 78,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF0E0E0E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            navItem(context, 'assets/imagePng/home.png', "Home", 0, selectedIndex),
            navItem(context, 'assets/imagePng/sessions.png', "Sessions", 1, selectedIndex),
            navItem(context, 'assets/imagePng/alarm.png', "Trade Alerts", 2, selectedIndex),
            navItem(context, 'assets/imagePng/mouse_circle.png', "Tap to Trade", 3, selectedIndex),
          ],
        ),
      ),
    );
  }

  Widget navItem(BuildContext context, String iconImage, String label, int i, int selectedIndex) {
    final selected = i == selectedIndex;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          switch (i) {
            case 0:
              context.go('/HomeScreen');
              break;
            case 1:
              context.go('/LiveSessions');
              break;
            case 2:
              context.go('/TradeAlerts');
              break;
            case 3:
              context.go('/TapToTrade');
              break;
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconImage,
              height: 22,
              color: selected ? CommonColorClass.mainAppColor : Colors.grey,
            ),
            const SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                color: selected ? CommonColorClass.mainAppColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
