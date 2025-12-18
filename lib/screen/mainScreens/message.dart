import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mks_task2_tradingbuddy/router/app_router.dart';
import 'package:mks_task2_tradingbuddy/screen/authentication/login_screen.dart';
import 'package:mks_task2_tradingbuddy/sesstionManage/shared_pref.dart';
import 'package:mks_task2_tradingbuddy/utils/common_color.dart';

class Message extends StatelessWidget {
  const Message({super.key});
  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.logout,
                  color: CommonColorClass.mainAppColor,
                  size: 50,
                ),
                SizedBox(height: 15),
                Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  "Are you sure you want to logout?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          appRoute.pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CommonColorClass.mainAppColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () async {
                          await SharedPref().logoutPref();
                          appRoute.pop();
                          appRoute.go('/LoginScreen');
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }


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
          showLogoutDialog(context);
        }, icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 4,
          bottom: 4,
        ),
        child: Column(
          children: [
            Container(
              height: 46,
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
