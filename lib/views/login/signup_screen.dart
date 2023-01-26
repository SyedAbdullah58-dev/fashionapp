import 'package:fashionapp/controllers/login_signup_controller.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/login/onboarding_screen.dart';
import 'package:fashionapp/views/login/Login_screen.dart';
import 'package:fashionapp/views/otp/select_otp.dart';
import 'package:fashionapp/widgets/error_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textform_field.dart';

class SignUpScreen extends StatelessWidget {
  LoginSignupController loginSignupController =
      Get.put(LoginSignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 70.h, left: 20.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20.r,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Sign up",
                  style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 57.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                    size: 20.r,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 57.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Transform.scale(
                      scale: 1.2,
                      child: ImageIcon(
                        AssetImage("assets/google.png"),
                        color: Colors.white,
                        size: 50.r,
                      ))),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          GetBuilder<LoginSignupController>(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Text(
                        "Full Name*",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: loginSignupController.full_name,
                  hinttext: "Asim Ahmed",
                ),
                if (loginSignupController.createAccount)
                  loginSignupController.full_name.text == ""
                      ? ErrorText(text: "Full Name required")
                      : Container(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Text(
                        "Email*",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                    hinttext: "ratan@gmail.com",
                    controller: loginSignupController.email),
                if (loginSignupController.createAccount)
                  loginSignupController.email.text == ""
                      ? ErrorText(text: "Email required")
                      : Container(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Text(
                        "Mobile Number*",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: loginSignupController.mobile_number,
                  hinttext: "Mobile Number",
                  keyboardType: TextInputType.number
                ),
                if (loginSignupController.createAccount)
                  loginSignupController.mobile_number.text == ""
                      ? ErrorText(text: "Mobile Number required")
                      : Container(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    children: [
                      Text(
                        "Password*",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                    controller: loginSignupController.password,
                    hinttext: "pick a strong password",
                    obscureText: true),
                if (loginSignupController.createAccount)
                  loginSignupController.password.text == ""
                      ? ErrorText(text: "Password required")
                      : Container(),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                    height: 59.h,
                    width: 344.w,
                    text: "Create Account",
                    function: () {
                      loginSignupController.createAccount = true;
                      loginSignupController.update();
                      if (loginSignupController.full_name.text != "" &&
                          loginSignupController.email.text != "" &&
                          loginSignupController.password.text != "" &&
                          loginSignupController.mobile_number.text != "") {
                        loginSignupController.CreateUser();
                        loginSignupController.createAccount = false;

                      }
                      else {return;}

                    }),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have an Account?",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.white60,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginScreen());
                      },
                      child: Text("Log in",
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none)),
                    )
                  ],
                ),
              ],
            );
          })
        ]));
  }
}
