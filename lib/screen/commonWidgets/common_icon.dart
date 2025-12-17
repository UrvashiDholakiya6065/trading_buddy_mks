import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';

import '../mainScreens/message.dart';

class CommonIcon extends StatelessWidget {
  const CommonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        appRoute.push('/Message');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) =>  Message(),));
      },
      child: SvgPicture.asset(
        'assets/imageSvg/message.svg',
        height: 24,
        fit: BoxFit.contain,
      ),
    );
  }
}
