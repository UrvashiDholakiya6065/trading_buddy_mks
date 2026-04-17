import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/main.dart';

import '../../utils/common_color.dart';
class CommonContainer extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final int index;
  final int selectedIndex;


  const CommonContainer({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.index,
    required this.selectedIndex,
  });


  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color:isDarkTheme ? (selectedIndex==index ? CommonColorClassDarkTheme.brown : CommonColorClassDarkTheme.blackTran) : (selectedIndex==index
              ? CommonColorClassLightTheme.lightOrange
              : CommonColorClassLightTheme.lightGrey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
           color:    isDarkTheme ? (selectedIndex==index ? CommonColorClassDarkTheme.mainAppColor : CommonColorClassDarkTheme.white) : (selectedIndex==index
                  ? CommonColorClassLightTheme.mainAppColor
                  : CommonColorClassLightTheme.black),              // color: selectedIndex==index?CommonColorClassDarkTheme.mainAppColor:CommonColorClassDarkTheme.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
  }

}