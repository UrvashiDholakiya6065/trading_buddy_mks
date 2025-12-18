import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mks_task2_tradingbuddy/screen/commonWidgets/common_icon.dart';
import 'package:step_progress/step_progress.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../utils/common_color.dart';
import '../../utils/media_query.dart';
import '../commonWidgets/common_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final stepProgressController = StepProgressController(totalSteps: 4);
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 200,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            'assets/imageSvg/img.svg',
            height: 60,
            fit: BoxFit.contain,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CommonIcon(),
          ),
        ],
      ),

      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  width: width(context),
                  decoration: BoxDecoration(
                    color: CommonColorClass.lightBlack,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16).copyWith(top: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundImage: AssetImage(
                                "assets/imagePng/profile_img.png",
                              ),
                            ),
                            SizedBox(width: 12),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rogar Mark",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CommonColorClass.white,
                                  ),
                                ),
                                Text(
                                  "Mark.rog@gmail.com",
                                  style: TextStyle(
                                    color: CommonColorClass.lightGrey,
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

                            SvgPicture.asset(
                              'assets/imageSvg/comment.svg',
                              height: 42,
                            ),
                          ],
                        ),
                        SizedBox(height: height(context) * 0.02),

                        Text(
                          "\$4,820",
                          style: TextStyle(
                            fontSize: 34,
                            color: CommonColorClass.mainAppColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.01),
                        CommonButtonClass(
                          height: 46,
                          width: width(context),
                          text: "Create Trading Account",
                          color: CommonColorClass.lightWhite10,
                          borderRadiusSize: 14,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height(context) * 0.02),
                Container(
                  height: height(context) * 0.25,
                  width: width(context),
                  decoration: BoxDecoration(
                    color: CommonColorClass.brown,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Refer 3 Friends, Get a free Membership",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: height(context) * 0.03),

                        StepProgress(
                          totalSteps: 4,
                          controller: stepProgressController,
                          axis: Axis.horizontal,
                          stepNodeSize: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 12),

                          // onStepChanged: (currentIndex) {
                          //   setState(() {
                          //     currentStep = currentIndex;
                          //   });
                          // },
                          //
                          // onStepNodeTapped: (index) {
                          //   stepProgressController.setCurrentStep(index);
                          //   setState(() {
                          //     currentStep = index;
                          //   });
                          // },

                          nodeIconBuilder: (int index, int completedIndex) {
                            // final bool isCompleted = index <= completedIndex;

                            if (index == 0) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  CircleAvatar(
                                    radius: 26,
                                    backgroundImage: AssetImage(
                                      "assets/imagePng/profile_img.png",
                                    ),
                                  ),

                                  Positioned(
                                    right: -4,
                                    bottom: -4,
                                    child: Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(width: 2),
                                      ),
                                      child:  Icon(
                                        Icons.check,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }

                            if (index == 3) {
                              return Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CommonColorClass.lightBrown,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.emoji_events,
                                  size: 22,
                                  color: CommonColorClass.white,
                                ),
                              );
                            }

                            // if (index == 3) {
                            //   return Container(
                            //     height: 50,
                            //     width: 50,
                            //     decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       color: CommonColorClass.lightBrown,
                            //     ),
                            //     alignment: Alignment.center,
                            //     child: Icon(
                            //       Icons.emoji_events,
                            //       size: 22,
                            //       color: CommonColorClass.white,
                            //     ),
                            //   );
                            // }
                            return Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: CommonColorClass.lightBrown,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: CommonColorClass.white,
                                ),
                              ),
                            );
                          },

                          theme: StepProgressThemeData(
                            stepLineSpacing: 29,

                            stepNodeStyle: StepNodeStyle(
                              activeForegroundColor: CommonColorClass.red,
                            ),
                            stepLineStyle: StepLineStyle(
                              borderRadius: Radius.circular(4),
                            ),
                          ),
                        ),

                        SizedBox(height: height(context) * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height(context) * 0.06,
                              width: width(context) * 0.55,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 8,
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: CommonColorClass.lightBrown,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "akashx.com/rogermark",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/imagePng/copyIcon.png",
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                            CommonButtonClass(
                              height: height(context) * 0.06,
                              width: width(context) * 0.2,
                              text: "Share",
                              color: CommonColorClass.mainAppColor,
                              borderRadiusSize: 14,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height(context) * 0.03),
                Text(
                  "Calculate your risk",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: height(context) * 0.01),
                Text(
                  "Use the slider below to calculate what you could",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CommonColorClass.lightGrey,
                  ),
                ),
                Text(
                  "have made if you took every signal last week",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CommonColorClass.lightGrey,
                  ),
                ),
                SizedBox(height: height(context) * 0.04),
                CircularStepProgressIndicator(
                  totalSteps: 150,
                  currentStep: 75,
                  stepSize: 15,
                  selectedColor: CommonColorClass.mainAppColor,
                  unselectedColor: CommonColorClass.blackTran,
                  padding: 0,
                  width: 160,
                  height: 160,
                  selectedStepSize: 15,
                  roundedCap: (_, _) => true,

                  child: Center(
                    child: Text(
                      "\$1.40",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
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
