import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_button_class.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_color_class.dart';
import 'package:mks_task2_tradingbuddy/common_class/media_query.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 200,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            'assets/trading_buddy/img.svg',
            height: 60,
            fit: BoxFit.contain,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SvgPicture.asset(
              'assets/trading_buddy/message.svg',
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Expanded(
                  child: Container(
                    // height: height(context) * 0.4,
                    width: width(context),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16).copyWith(top: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   children: [
                          //     CircleAvatar(
                          //       maxRadius: 34,
                          //       backgroundColor: CommonColorClass.lightWhite,
                          //     ),
                          //     Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Text("Rogar Mark"),
                          //         Text("Mark.rog@gmail.com"),
                          //       ],
                          //     ),
                          //     Align(
                          //         alignment: AlignmentGeometry.centerLeft,
                          //         child: SvgPicture.asset('assets/trading_buddy/Comment.svg',height: height(context)*0.06))
                          //   ],
                          // ),
                          // ListTile(
                          //   leading: CircleAvatar(
                          //     maxRadius: 34,
                          //     backgroundColor: CommonColorClass.lightWhite,
                          //   ),
                          //   title: Text("Rogar Mark"),
                          //   subtitle: Text("Mark.rog@gmail.com"),
                          //   trailing: SvgPicture.asset(
                          //     'assets/trading_buddy/Comment.svg',
                          //   ),
                          // ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                maxRadius: 34,
                                backgroundColor: CommonColorClass.lightWhite70,
                              ),
        
                              SizedBox(width: 12),
        
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Rogar Mark"),
                                  Text("Mark.rog@gmail.com"),
                                ],
                              ),
        
                              Spacer(),
        
                              SvgPicture.asset(
                                'assets/trading_buddy/Comment.svg',
                                height: height(context) * 0.06,
                              ),
                            ],
                          ),
                          SizedBox(height: height(context) * 0.02),
        
                          Text(
                            "\$4,820",
                            style: TextStyle(
                              fontSize: 40,
                              color: CommonColorClass.mainAppColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: height(context) * 0.03),
                          CommonButtonClass(
                            height: height(context) * 0.08,
                            width: width(context),
                            text: "Create Trading Account",
                            color: CommonColorClass.lightWhite10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height(context) * 0.02),
              Container(
                height: height(context) * 0.2,
                width: width(context),
                decoration: BoxDecoration(
                  color: Color(0xff8D2B12),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Refer 3 Friends, Get a free Membership",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text("lhdHSUdhsuduukdkhssjk"),
            ],
          ),
        ),
      ),
    );
  }
}
