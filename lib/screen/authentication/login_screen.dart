  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:mks_task2_tradingbuddy/router/app_router.dart';
  import 'package:mks_task2_tradingbuddy/sesstionManage/shared_pref.dart';
  import '../../utils/common_color.dart';
  import '../../utils/media_query.dart';
  import '../commonWidgets/common_field_controllers.dart';
  import '../commonWidgets/common_textform_field.dart';

  class LoginScreen extends StatefulWidget {
     const LoginScreen({super.key});

    @override
    State<LoginScreen> createState() => _LoginScreenState();
  }

  class _LoginScreenState extends State<LoginScreen> {

    final loginFormKey = GlobalKey<FormState>();
    final _emailKey = GlobalKey<FormFieldState>();
    final _passwordKey = GlobalKey<FormFieldState>();
    @override
    Widget build(BuildContext context) {

      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top:16),
              child: Form(
                key: loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: SvgPicture.asset('assets/imageSvg/img.svg')),
                    SizedBox(height: height(context) * 0.03),
                    Center(child: SvgPicture.asset('assets/imageSvg/group.svg')),
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

                    CommonTextFormField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.person_2_outlined),
                      controller:
                          CommonFieldControllers.loginEmailController,
                      emptyMsg: "Please enter your email",
                      invalidMsg: "Enter a valid email",
                      pattern:
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                      obscureText: false,
                      fieldKey: _emailKey,

                    ),
                    SizedBox(height: height(context) * 0.03),

                    CommonTextFormField(
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                      controller:
                      CommonFieldControllers.loginPasswordController,
                      prefixIcon: Icon(Icons.lock),
                      emptyMsg: "Please enter your password",
                      invalidMsg:
                      "Password must be at least 6 characters, \ninclude uppercase, lowercase, number & \nspecial character",
                      pattern: r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$#!%*?&])[A-Za-z\d@$#!%*?&]{6,}$',
                      obscureText: true,
                      fieldKey: _passwordKey,

                    ),
                    SizedBox(height: height(context) * 0.03),

                GestureDetector(
                  onTap: () async {

                    if (loginFormKey.currentState!.validate()) {
                      print("Typed email: ${CommonFieldControllers.loginEmailController.text}");
                      print("Typed email: ${CommonFieldControllers.loginPasswordController.text}");

                      await SharedPref().setUserDataPref();
                     appRoute.go('/HomeScreen');
                     CommonFieldControllers.loginEmailController.clear();
                      CommonFieldControllers.loginPasswordController.clear();
                    }
                  },
                  child: Container(
                    height: height(context) * 0.08,
                    width: width(context),
                    decoration: BoxDecoration(
                      color: CommonColorClass.mainAppColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: CommonColorClass.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                    SizedBox(height: height(context) * 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?"),
                        SizedBox(width: width(context) * 0.01),
                        GestureDetector(
                          onTap: () {},
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
