import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/main.dart';

import '../../utils/common_color.dart';


class CommonButtonClass extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;
  final Color textColor;
  final double borderRadiusSize;
  final double fontSize;


  const CommonButtonClass({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.color,
    required this.borderRadiusSize,
    required this.fontSize,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadiusSize),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
