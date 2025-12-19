import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mks_task2_tradingbuddy/screen/commonWidgets/common_icon.dart';

import '../../utils/common_color.dart';
import '../../utils/media_query.dart';
import '../commonWidgets/common_button.dart';

class TapToTrade extends StatelessWidget {
  const TapToTrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Tap to Trade",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 386,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CommonColorClassDarkTheme.lightBlack,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: CommonColorClassDarkTheme.lightWhite10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "XAUUSD",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Just Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            CommonButtonClass(
                              height: 38,
                              width: width(context) * 0.2,
                              text: "Buy",
                              color: CommonColorClassDarkTheme.mintGreen,
                              borderRadiusSize: 50,
                              fontSize: 14, textColor: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: height(context) * 0.01),
                        Divider(),
                        SizedBox(height: height(context) * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                "assets/imagePng/profile_img.png",
                              ),
                            ),
                            SizedBox(width: width(context) * 0.04),
                            Text(
                              "Aurelie Rich Mum",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height(context)*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 54,
                              width: 88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 54,
                              width: 88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 54,
                              width: 88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height(context)*0.02,),
                        Container(
                          height: 130,
                          width: double.infinity  ,
                          decoration: BoxDecoration(
                            color: CommonColorClassDarkTheme.lightWhite10,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Text("Expiration",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                Container(
                                  height:98,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      // color: Colors.yellow,
          
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Text("00",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                              Text("Hours",style: TextStyle(fontWeight: FontWeight.w700),),
                                            ],
                                          ),
                                          Text(":"),
                                          Column(
                                            children: [
                                              Text("24",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                              Text("Minutes",style: TextStyle(fontWeight: FontWeight.w700),),
                                            ],
                                          ),
                                          Text(":"),
                                          Column(
                                            children: [
                                              Text("12",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                              Text("Seconds",style: TextStyle(fontWeight: FontWeight.w700),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height(context)*0.03,),
                Container(
                  height: 386,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CommonColorClassDarkTheme.lightBlack,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: CommonColorClassDarkTheme.lightWhite10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "USD/CHF",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Expired",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: CommonColorClassDarkTheme.red
                                  ),
                                ),
                              ],
                            ),
                            CommonButtonClass(
                              height: 38,
                              width: width(context) * 0.2,
                              text: "Buy",
                              color: CommonColorClassDarkTheme.lightWhite10,
                              borderRadiusSize: 50,
                              fontSize: 14, textColor: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: height(context) * 0.01),
                        Divider(),
                        SizedBox(height: height(context) * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                "assets/imagePng/profile_img.png",
                              ),
                            ),
                            SizedBox(width: width(context) * 0.04),
                            Text(
                              "Aurelie Rich Mum",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height(context)*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 54,
                              width:88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 54,
                              width: 88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 54,
                              width: 88,
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.darkCharcoalBrown,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.mainAppColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,left: 6,bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EP"),
                                    Text("0.8626",style: TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height(context)*0.02,),
                        Container(
                          height: 130,
                          width: double.infinity  ,
                          decoration: BoxDecoration(
                              color: CommonColorClassDarkTheme.lightWhite10,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Text("Expiration",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                                SizedBox(
                                  height:98,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Text("00",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                            Text("Hours",style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                        Text(":"),
                                        Column(
                                          children: [
                                            Text("00",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                            Text("Minutes",style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                        Text(":"),
                                        Column(
                                          children: [
                                            Text("00",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                                            Text("Seconds",style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
