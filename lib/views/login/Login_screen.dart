import 'package:fashionapp/controllers/login_signup_controller.dart';
import 'package:fashionapp/views/otp/select_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textform_field.dart';
import '../../widgets/error_text.dart';

class LoginScreen extends StatelessWidget {
  LoginSignupController loginSignupController =
      Get.find<LoginSignupController>();

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
                      size: 30.r,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Log in",
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
          GetBuilder<LoginSignupController>(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      children: [
                        Text(
                          "Email / Username*",
                          style: textStyle,
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(hinttext: "ratan@gmail.com",controller: loginSignupController.loginEmail),
                  if (loginSignupController.createAccount)
                    loginSignupController.loginEmail.text == ""
                        ? ErrorText(text: "Email/Username required")
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
                    controller: loginSignupController.loginPassword,
                      hinttext: "Enter Your Password", obscureText: true),
                  if (loginSignupController.createAccount)
                    loginSignupController.loginEmail.text == ""
                        ? ErrorText(text: "password required")
                        : Container(),
                  SizedBox(
                    height: 200.h,
                  ),
                  CustomButton(
                      height: 59.h,
                      width: 344.w,
                      text: "Login",
                      function: () {
                        loginSignupController.createAccount = true;
                        loginSignupController.update();
                        if (loginSignupController.loginEmail.text != "" &&
                            loginSignupController.loginPassword.text != "") {
                          loginSignupController.loginEmail.clear();
                          loginSignupController.loginPassword.clear();
                          loginSignupController.createAccount = false;
                          print("coming");
                          Get.to(SelectOtp());
                        }
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SelectOtp());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: dullTextColor,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: dullTextColor,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text("Sign up",
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
            }
          )
        ]));
  }
}
