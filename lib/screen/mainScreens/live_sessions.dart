import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mks_task2_tradingbuddy/screen/commonWidgets/common_icon.dart';

import '../../utils/common_color.dart';
import '../../utils/media_query.dart';
import '../commonWidgets/common_container.dart';

class LiveSessions extends StatefulWidget {
  const LiveSessions({super.key});

  @override
  State<LiveSessions> createState() => _LiveSessionsState();
}

class _LiveSessionsState extends State<LiveSessions> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Live Sessions",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: CommonContainer(
                        text: "All Language",
                        width: width(context) * 0.4,
                        height: height(context) * 0.05,
                        index: 1,
                        selectedIndex: selectedIndex,
                      ),
                    ),
                    SizedBox(width: width(context) * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: CommonContainer(
                        text: "English",
                        width: width(context) * 0.3,
                        height: height(context) * 0.05,
                        index: 2,
                        selectedIndex: selectedIndex,
                      ),
                    ),
                    SizedBox(width: width(context) * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      child: CommonContainer(
                        text: "Spanish",
                        width: width(context) * 0.3,
                        height: height(context) * 0.05,
                        index: 3,
                        selectedIndex: selectedIndex,
                      ),
                    ),
                    SizedBox(width: width(context) * 0.02),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                      child: CommonContainer(
                        text: "France",
                        width: width(context) * 0.3,
                        height: height(context) * 0.05,
                        index: 4,
                        selectedIndex: selectedIndex,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height(context) * 0.02),

              SessionSection(
                dateLabel: 'Sep\n17',
                title: 'Today Sessions',
                sessions: [
                  SessionInfo(
                    mentorName: 'Brent Badal',
                    pair: 'Nas100 & Gold',
                    description:
                        'Your gateway to mastering Forex and Crypto trading. Our platform',
                    languages: ['English', 'Spanish'],
                  ),
                  SessionInfo(
                    mentorName: 'Brent Badal',
                    pair: 'Nas100 & Gold',
                    description:
                        'Your gateway to mastering Forex and Crypto trading. Our platform',
                    languages: ['English'],
                  ),
                ],
              ),

              SizedBox(height: 6),
              Center(
                child: SessionSection(
                  dateLabel: 'Sep\n19',
                  title: 'Saturday Sessions',
                  sessions: [
                    SessionInfo(
                      mentorName: 'Brent Badal',
                      pair: 'Nas100 & Gold',
                      description:
                          'Your gateway to mastering Forex and Crypto trading. Our platform',
                      languages: ['English', 'Spanish'],
                    ),
                    SessionInfo(
                      mentorName: 'Brent Badal',
                      pair: 'Nas100 & Gold',
                      description:
                          'Your gateway to mastering Forex and Crypto trading. Our platform',
                      languages: ['English'],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SessionSection extends StatelessWidget {
  final String dateLabel;
  final String title;
  final List<SessionInfo> sessions;

  const SessionSection({
    super.key,
    required this.dateLabel,
    required this.title,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFF2B2B2B),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                dateLabel,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 2,
              height: height(context) * 0.32,
              color: Colors.white24,
            ),
          ],
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: height(context) * 0.32,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: sessions.length,
                  separatorBuilder: (context, builder) {
                    return SizedBox(width: 12);
                  },
                  itemBuilder: (context, index) {
                    return SessionCard(info: sessions[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SessionInfo {
  final String mentorName;
  final String pair;
  final String description;
  final List<String> languages;

  const SessionInfo({
    required this.mentorName,
    required this.pair,
    required this.description,
    required this.languages,
  });
}

class SessionCard extends StatelessWidget {
  final SessionInfo info;

  const SessionCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width(context) * 0.6,
      decoration: BoxDecoration(
        color: CommonColorClass.lightBlack,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height(context) * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CommonColorClass.lightBrown2,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
              ),
              Positioned(
                bottom: -24,
                left: 16,
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(
                    "assets/imagePng/profile_img.png",
                  ),
                ),
                // backgroundColor: Colors.white,
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.mentorName,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2),
                Text(
                  info.pair,
                  style: TextStyle(
                    color: CommonColorClass.mainAppColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  info.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white70,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  children: info.languages
                      .map(
                        (lang) => Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: CommonColorClass.brown,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            lang,
                            style: TextStyle(
                              fontSize: 14,
                              color: CommonColorClass.mainAppColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
