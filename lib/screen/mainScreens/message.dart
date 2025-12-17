import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';
import 'package:mks_task2_tradingbuddy/screen/authentication/login_screen.dart';
import 'package:mks_task2_tradingbuddy/sesstionManage/shared_pref.dart';
import 'package:mks_task2_tradingbuddy/utils/common_color.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Message",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [IconButton(onPressed: () {
          SharedPref().logoutPref().then((v) {
            appRoute.go('/LoginScreen');
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (
            //     context) => LoginScreen()), (route)=>false);
          });
        }, icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 8,
          bottom: 12,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CommonColorClass.lightWhite10,
                borderRadius: BorderRadius.circular(34),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.search),
                    SizedBox(width: 8),
                    Text(
                      "Search Message",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                          "assets/imagePng/profile_img.png",
                        ),
                      ),
                      title: Text("Ashlynn Westervelt", style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),),
                      subtitle: Text(
                        "That's a great game of us, we",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      trailing: Text("Just Now",
                        style: TextStyle(fontWeight: FontWeight.w400),)
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
