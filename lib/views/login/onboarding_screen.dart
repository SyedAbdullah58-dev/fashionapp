import 'package:fashionapp/controllers/onboarding_controller.dart';
import 'package:fashionapp/home/navbar_screen.dart';
import 'package:fashionapp/views/login/signup_screen.dart';

import 'package:fashionapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingController onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 20.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 72.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 174.h,
                    width: 174.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/logo.png"))),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 289.h,
                    width: 237.w,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (int i = 0; i < 7; i++)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.h, horizontal: 10.w),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/pak.png"),
                                    radius: 15.r,
                                  ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    onboardingController.languages[i],
                                    style: textStyle,
                                  ),
                                  Expanded(child: Container()),
                                  Theme(
                                    data: ThemeData(),
                                    child: GetBuilder<OnboardingController>(
                                        builder: (context) {
                                      return Radio(
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                          (states) => Colors.white,
                                        ),
                                        focusColor: Colors.white,
                                        groupValue:
                                            onboardingController.buttonValue,
                                        onChanged: (value) {
                                          onboardingController.buttonValue =
                                              value;
                                          onboardingController.update();
                                          print(value);
                                        },
                                        value: i,
                                      );
                                    }),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      height: 51.h,
                      width: 289.w,
                      text: "Continue With Login",
                      function: () {
                        if (onboardingController.acceptTerm)
                          Get.to(SignUpScreen());
                        else {
                          onboardingController.openBox = true;
                          onboardingController.update();
                        }
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      height: 51.h,
                      width: 289.w,
                      text: "Continue Without Login",
                      function: () {
                        if (onboardingController.acceptTerm)
                          Get.to(() => NavbarScreen());
                        else {
                          onboardingController.openBox = true;
                          onboardingController.update();
                        }
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GetBuilder<OnboardingController>(builder: (context) {
                          return GestureDetector(
                              onTap: () {
                                if (!onboardingController.acceptTerm) {
                                  onboardingController.acceptTerm = true;
                                  onboardingController.update();
                                } else {
                                  onboardingController.acceptTerm = false;
                                  onboardingController.update();
                                }
                              },
                              child: Icon(Icons.check_circle,
                                  size: 15.r,
                                  color: onboardingController.acceptTerm
                                      ? Color(0xff42C850)
                                      : Colors.white));
                        }),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          "By clicking Continue, you agree to our\nTerms, Conditions & Privacy Policy",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Color(0xff888787),
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ]),
            GetBuilder<OnboardingController>(builder: (context) {
              return onboardingController.openBox
                  ? Container(
                      alignment: Alignment.center,
                      height: 159.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                              colors: gradientColor,
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "First you must be agree to\nour Terms, Conditions & Privacy Policy",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          GestureDetector(
                              onTap: () {
                                onboardingController.openBox = false;
                                onboardingController.update();
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25.r,
                              )),
                        ],
                      ),
                    )
                  : Container();
            })
          ],
        ));
  }
}
