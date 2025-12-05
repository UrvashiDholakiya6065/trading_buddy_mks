import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_button_class.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_color_class.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_field_controllers.dart';
import 'package:mks_task2_tradingbuddy/common_class/common_textform_field_class.dart';
import 'package:mks_task2_tradingbuddy/common_class/media_query.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 24),
          child: SingleChildScrollView(
            child: Form(
              key: CommonFieldControllers.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: SvgPicture.asset('assets/trading_buddy/img.svg')),
                  SizedBox(height: height(context) * 0.03),
                  Center(
                    child: SvgPicture.asset('assets/trading_buddy/Group.svg'),
                  ),
                  SizedBox(height: height(context) * 0.03),
                  Text(
                    "Your Trading Journey Starts Here.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height(context) * 0.01),

                  Text(
                    "Your gateway to mastering Forex and Crypto trading. Our platform provides tools, knowledge, and support for your trading success.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: height(context) * 0.03),

                  CommonTextFormFieldClass(
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.person_2_outlined),
                    controller: CommonFieldControllers.loginEmailController.text,
                    emptyMsg: "Please enter your email",
                    invalidMsg: "Enter a valid email",
                    pattern:
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                  ),
                  SizedBox(height: height(context) * 0.03),
                  CommonTextFormFieldClass(
                    hintText: "Password",
                    controller: CommonFieldControllers.loginPasswordController.text,
                    prefixIcon: Icon(Icons.lock),
                    emptyMsg: "Please enter your password",
                    invalidMsg: "Enter a valid password",
                  ),
                  SizedBox(height: height(context) * 0.03),
                  CommonButtonClass(
                    height: height(context) * 0.08,
                    width: width(context),
                    text: "Login",
                    color: CommonColorClass.mainAppColor,
                  ),
                  SizedBox(height: height(context) * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
