import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mks_task2_tradingbuddy/utils/common_color.dart';

import '../../utils/media_query.dart';
import '../commonWidgets/common_button.dart';

class ForexScreen extends StatefulWidget {
  const ForexScreen({super.key});

  @override
  State<ForexScreen> createState() => _ForexScreenState();
}

class _ForexScreenState extends State<ForexScreen> {
  int selectedIndex = 2;
  final List<String> filters = ["1H", "1D", "1W", "1M", "1Y", "YTD"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 740,
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
                                "2 Days ago",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          CommonButtonClass(
                            height: 42,
                            width: width(context) * 0.3,
                            text: "Sell Market",
                            color: Color(0xffed1c24),
                            borderRadiusSize: 50,
                            fontSize: 14, textColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height:8),
                      Divider(),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SWISS FRANC CHART",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 24,
                                itemPadding: EdgeInsets.symmetric(
                                  horizontal: 1.0,
                                  vertical: 1,
                                ),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: CommonColorClassDarkTheme.star,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Active",
                              style: TextStyle(
                                color: CommonColorClassDarkTheme.mintGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        height: 186,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 12,
                                crossAxisSpacing: 16,
                                childAspectRatio: 1.17,
                              ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            final titles = [
                              "EP",
                              "SL",
                              "TP1",
                              "TP2",
                              "TP3",
                              "TP4",
                            ];
                            final values = [
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                            ];

                            return Container(
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.blackTran,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.lightWhite10,
                                ),
                              ),
                              padding: EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            titles[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            values[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        "assets/imagePng/copyIcon.png",
                                        height: 19,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Divider(),

                      SizedBox(height: 16),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "11,100",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                "+306.14",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CommonColorClassDarkTheme.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                               SizedBox(width: 4),
                               Icon(
                                Icons.expand_circle_down_outlined,
                                color: Color(0xFF44FF88),
                                size: 18,
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          SizedBox(
                            height: 220,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: LineChart(
                                LineChartData(
                                  backgroundColor: Colors.transparent,
                                  borderData: FlBorderData(show: false),

                                  gridData: FlGridData(
                                    drawVerticalLine: false,
                                    drawHorizontalLine: true,
                                    getDrawingHorizontalLine: (value) {
                                      if (value == 11100) {
                                        return FlLine(
                                          color: Colors.white24,
                                          strokeWidth: 1,
                                          dashArray: [6, 5],
                                        );
                                      }
                                      return FlLine(color: Colors.transparent);
                                    },
                                  ),

                                  titlesData: FlTitlesData(
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 200,
                                        reservedSize: 50,
                                        getTitlesWidget: (value, meta) {
                                          if (value % 200 == 0) {
                                            return Text(
                                              value.toInt().toString(),
                                              style:  TextStyle(
                                                color: Colors.white60,
                                                fontSize: 12,
                                              ),
                                            );
                                          }
                                          return SizedBox.shrink();
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                  ),

                                  minX: 0,
                                  maxX: 10,
                                  minY: 10200,
                                  maxY: 11600,

                                  lineBarsData: [
                                    LineChartBarData(
                                      spots:  [
                                        FlSpot(0, 10800),
                                        FlSpot(1, 11000),
                                        FlSpot(2, 11200),
                                        FlSpot(3, 11100),
                                        FlSpot(4, 11300),
                                        FlSpot(5, 11200),
                                        FlSpot(6, 11300),
                                        FlSpot(7, 11200),
                                        FlSpot(8, 11100),
                                        FlSpot(9, 11300),
                                        FlSpot(10, 11200),
                                      ],
                                      isCurved: false,
                                      color: CommonColorClassDarkTheme.mainAppColor,
                                      barWidth: 1,

                                      belowBarData: BarAreaData(
                                        show: true,
                                        gradient: LinearGradient(
                                          colors: [
                                            CommonColorClassDarkTheme.mainAppColor
                                                .withOpacity(0.40),
                                            Colors.transparent,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),

                                      dotData: FlDotData(
                                        show: true,
                                        checkToShowDot: (spot, bar) =>
                                            spot.x == 5,
                                        getDotPainter: (spot, p, bar, i) =>
                                            FlDotCirclePainter(
                                              radius: 5,
                                              color:
                                                  CommonColorClassDarkTheme.mainAppColor,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(filters.length, (index) {
                              final active = selectedIndex == index;
                              return GestureDetector(
                                onTap: () {
                                  setState(() => selectedIndex = index);
                                },
                                child: Text(
                                  filters[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: active
                                        ? Color(0xFFFF5522)
                                        : Colors.white54,
                                    fontWeight: active
                                        ? FontWeight.w700
                                        : FontWeight.w500,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height(context) * 0.02),
              Container(
                height: 740,
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
                                "2 Days ago",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          CommonButtonClass(
                            height: 42,
                            width: width(context) * 0.3,
                            text: "Sell Market",
                            color: Color(0xffed1c24),
                            borderRadiusSize: 50,
                            fontSize: 14, textColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height:8),
                      Divider(),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SWISS FRANC CHART",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 24,
                                itemPadding: EdgeInsets.symmetric(
                                  horizontal: 1.0,
                                  vertical: 1,
                                ),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: CommonColorClassDarkTheme.star,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Active",
                              style: TextStyle(
                                color: CommonColorClassDarkTheme.mintGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        height: 186,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.17,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            final titles = [
                              "EP",
                              "SL",
                              "TP1",
                              "TP2",
                              "TP3",
                              "TP4",
                            ];
                            final values = [
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                              "0.8626",
                            ];

                            return Container(
                              decoration: BoxDecoration(
                                color: CommonColorClassDarkTheme.blackTran,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: CommonColorClassDarkTheme.lightWhite10,
                                ),
                              ),
                              padding: EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            titles[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            values[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        "assets/imagePng/copyIcon.png",
                                        height: 19,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Divider(),

                      SizedBox(height: 16),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "11,100",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                "+306.14",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: CommonColorClassDarkTheme.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.expand_circle_down_outlined,
                                color: Color(0xFF44FF88),
                                size: 18,
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          SizedBox(
                            height: 220,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: LineChart(
                                LineChartData(
                                  backgroundColor: Colors.transparent,
                                  borderData: FlBorderData(show: false),

                                  gridData: FlGridData(
                                    drawVerticalLine: false,
                                    drawHorizontalLine: true,
                                    getDrawingHorizontalLine: (value) {
                                      if (value == 11100) {
                                        return FlLine(
                                          color: Colors.white24,
                                          strokeWidth: 1,
                                          dashArray: [6, 5],
                                        );
                                      }
                                      return FlLine(color: Colors.transparent);
                                    },
                                  ),

                                  titlesData: FlTitlesData(
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 200,
                                        reservedSize: 50,
                                        getTitlesWidget: (value, meta) {
                                          if (value % 200 == 0) {
                                            return Text(
                                              value.toInt().toString(),
                                              style:  TextStyle(
                                                color: Colors.white60,
                                                fontSize: 12,
                                              ),
                                            );
                                          }
                                          return SizedBox.shrink();
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                  ),

                                  minX: 0,
                                  maxX: 10,
                                  minY: 10200,
                                  maxY: 11600,

                                  lineBarsData: [
                                    LineChartBarData(
                                      spots:  [
                                        FlSpot(0, 10800),
                                        FlSpot(1, 11000),
                                        FlSpot(2, 11200),
                                        FlSpot(3, 11100),
                                        FlSpot(4, 11300),
                                        FlSpot(5, 11200),
                                        FlSpot(6, 11300),
                                        FlSpot(7, 11200),
                                        FlSpot(8, 11100),
                                        FlSpot(9, 11300),
                                        FlSpot(10, 11200),
                                      ],
                                      isCurved: false,
                                      color: CommonColorClassDarkTheme.mainAppColor,
                                      barWidth: 1,

                                      belowBarData: BarAreaData(
                                        show: true,
                                        gradient: LinearGradient(
                                          colors: [
                                            CommonColorClassDarkTheme.mainAppColor
                                                .withOpacity(0.40),
                                            Colors.transparent,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),

                                      dotData: FlDotData(
                                        show: true,
                                        checkToShowDot: (spot, bar) =>
                                        spot.x == 5,
                                        getDotPainter: (spot, p, bar, i) =>
                                            FlDotCirclePainter(
                                              radius: 5,
                                              color:
                                              CommonColorClassDarkTheme.mainAppColor,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(filters.length, (index) {
                              final active = selectedIndex == index;
                              return GestureDetector(
                                onTap: () {
                                  setState(() => selectedIndex = index);
                                },
                                child: Text(
                                  filters[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: active
                                        ? Color(0xFFFF5522)
                                        : Colors.white54,
                                    fontWeight: active
                                        ? FontWeight.w700
                                        : FontWeight.w500,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
