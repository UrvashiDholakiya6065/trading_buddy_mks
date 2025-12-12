import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          color: selectedIndex == index ? CommonColorClass.brown : CommonColorClass.blackTran,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selectedIndex==index?CommonColorClass.mainAppColor:CommonColorClass.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
  }

}