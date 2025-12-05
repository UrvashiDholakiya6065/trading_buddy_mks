import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_field_controllers.dart';
import 'package:mks_task2_tradingbuddy/main_screens/home_screen.dart';

import 'common_color_class.dart';

class CommonButtonClass extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;

  const CommonButtonClass({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(CommonFieldControllers.loginFormKey.currentState!.validate()){
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomeScreen()),
                (route) => false,
          );
        }


      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          // color: CommonColorClass.mainAppColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              // color: CommonColorClass.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
