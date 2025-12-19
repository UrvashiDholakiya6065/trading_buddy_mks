import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mks_task2_tradingbuddy/screen/commonWidgets/common_icon.dart';
import 'package:mks_task2_tradingbuddy/screen/mainScreens/forex_screen.dart';
import 'package:mks_task2_tradingbuddy/utils/common_color.dart';

class TradeAlerts extends StatelessWidget {
  const TradeAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Trade Alerts",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
          isScrollable: true,
            indicatorColor: CommonColorClassDarkTheme.mainAppColor,
            unselectedLabelColor: CommonColorClassDarkTheme.white,
            labelColor: CommonColorClassDarkTheme.mainAppColor,
            tabs: [
              Tab(text: "Forex"),
              Tab(text: "Crypto"),
              Tab(text: "Binary Options"),
              Tab(text: "Como"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: CommonIcon()
            ),
          ],
        ),
        drawer: Drawer(),
        body: SafeArea(
          bottom: false,
          child: TabBarView(
            children: [
              ForexScreen(),
              Center(child: Text('CryptoScreen')),
              Center(child: Text('Binary Options Screen')),
              Center(child: Text('Commo Screen')),
            ],
          ),
        ),
      ),
    );
  }
}
