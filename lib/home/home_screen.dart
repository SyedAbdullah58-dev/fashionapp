import 'package:fashionapp/controllers/toptrend_controller.dart';
import 'package:fashionapp/home/notification_screen.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/home/toptrending_screen.dart';
import 'package:fashionapp/views/login/Login_screen.dart';
import 'package:fashionapp/views/login/signup_screen.dart';
import 'package:fashionapp/widgets/custom_function_button.dart';
import 'package:fashionapp/widgets/new_feed_container.dart';
import 'package:fashionapp/widgets/profile_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/button_state_controller.dart';
import '../controllers/home_screen_controller.dart';
import '../controllers/login_signup_controller.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_home_container.dart';
import '../widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  LoginSignupController loginSignupController =
      Get.find<LoginSignupController>();
  ButtonStateController buttonStateController =
      Get.put(ButtonStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          GetBuilder<HomeScreenController>(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 29.r,
                              color: Colors.white,
                            ),
                          );
                        }),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 237.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: TextField(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                decoration: TextDecoration.none),
                            decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                hintText: "Search",
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 15.r,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        InkWell(
                            onTap: () {
                              if (!loginSignupController.isLoggedIn) {
                                homeScreenController.showLoginPrompt = true;
                                homeScreenController.update();
                                return;
                              }
                              Get.to(() => NotificationScreen());
                            },
                            child: ImageIcon(
                              AssetImage("assets/bell.png"),
                              size: 29.r,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Top Trending",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {


                            Get.to(() => TopTrendingScreen());
                          },
                          child: Text(
                            "See More",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.white,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customHomeContainer(
                            likes: "23",
                            dislikes: "34",
                            image: "assets/image1.png",
                            function: () {
                              Get.to(TopTrendingScreen());
                            },
                          ),
                          customHomeContainer(
                            likes: "23",
                            dislikes: "34",
                            image: "assets/image2.png",
                            function: () {},
                          ),
                          customHomeContainer(
                            likes: "23",
                            dislikes: "34",
                            image: "assets/image3.png",
                            function: () {},
                          ),
                          customHomeContainer(
                            likes: "23",
                            dislikes: "34",
                            image: "assets/image4.png",
                            function: () {},
                          ),
                          customHomeContainer(
                            likes: "23",
                            dislikes: "34",
                            image: "assets/image4.png",
                            function: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Profile",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ProfileContainer(image: "assets/profile1.png"),
                          ProfileContainer(image: "assets/profile2.png"),
                          ProfileContainer(image: "assets/profile1.png"),
                          ProfileContainer(image: "assets/profile2.png"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "New Feed",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                        Expanded(child: Container()),
                        GetBuilder<HomeScreenController>(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              if (!loginSignupController.isLoggedIn) {
                                homeScreenController.showLoginPrompt = true;
                                homeScreenController.update();
                                return;
                              }
                              if (!homeScreenController.mainFollowButton) {
                                homeScreenController.mainFollowButton = true;
                                homeScreenController.update();
                              } else {
                                homeScreenController.mainFollowButton = false;
                                homeScreenController.update();
                              }
                            },
                            child: Container(
                              height: 24.h,
                              width: 95.w,
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  homeScreenController.mainFollowButton
                                      ? ImageIcon(
                                          AssetImage("assets/filledheart.png"),
                                          color: Color(0xffEA2E05),
                                          size: 30.r,
                                        )
                                      : ImageIcon(
                                          AssetImage("assets/heart.png"),
                                          color: Color(0xffEA2E05),
                                          size: 30.r,
                                        ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Follow",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14.sp,
                                        color: Colors.white60,
                                        wordSpacing: 1.sp,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: Colors.white),
                                  color: Colors.black),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          NewFeedContainer(
                            image: "assets/profile1.png",
                            width: 356.w,
                            height: 325.h,
                          ),
                          SizedBox(height:10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: GetBuilder<ButtonStateController>(
                                builder: (context) {
                              return Container(
                                width: 350.w,
                                child: Row(
                                  children: [
                                    CustomFunctionButton(
                                        height: 37.h,
                                        width: 55.w,
                                        customIcon: Icons.thumb_up,
                                        IconColor: buttonStateController.isLiked
                                            ? Colors.red
                                            : Colors.white,
                                        function: () {
                                          if(!loginSignupController.isLoggedIn){
                                            homeScreenController.showLoginPrompt=true;
                                            homeScreenController.update();
                                            return;
                                          }
                                          else{
                                          if (!buttonStateController.isLiked)
                                            buttonStateController.isLiked =
                                                true;
                                          else
                                            buttonStateController.isLiked =
                                                false;
                                          buttonStateController.update();
                                          print(buttonStateController.isLiked);
                                        }}),
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    CustomFunctionButton(
                                        height: 37.h,
                                        width: 55.w,
                                        customIcon: Icons.thumb_down,
                                        IconColor:
                                            buttonStateController.isDisliked
                                                ? Colors.red
                                                : Colors.white,
                                        function: () {
                                          if(!loginSignupController.isLoggedIn){
                                            homeScreenController.showLoginPrompt=true;
                                            homeScreenController.update();
                                            return;
                                          }else{
                                          if (!buttonStateController.isDisliked)
                                            buttonStateController.isDisliked =
                                                true;
                                          else
                                            buttonStateController.isDisliked =
                                                false;
                                          buttonStateController.update();
                                        }}),
                                    SizedBox(
                                      width: 5.h,
                                    ),
                                    CustomFunctionButton(
                                        height: 37.h,
                                        width: 55.w,
                                        customIcon: Icons.chat_bubble,
                                        IconColor:
                                            buttonStateController.openComment
                                                ? Colors.red
                                                : Colors.white,
                                        function: () {
                                          if(!loginSignupController.isLoggedIn){
                                            homeScreenController.showLoginPrompt=true;
                                            homeScreenController.update();
                                            return;
                                          }else{
                                          if (!buttonStateController
                                              .openComment)
                                            buttonStateController.openComment =
                                                true;
                                          else
                                            buttonStateController.openComment =
                                                false;
                                          buttonStateController.update();
                                        }}),
                                    Expanded(child: Container()),
                                    CustomFunctionButton(
                                        height: 37.h,
                                        width: 55.w,
                                        customIcon: Icons.repeat,
                                        IconColor:
                                            buttonStateController.isRetweeted
                                                ? Colors.red
                                                : Colors.white,
                                        function: () {
                                          if(!loginSignupController.isLoggedIn){
                                            homeScreenController.showLoginPrompt=true;
                                            homeScreenController.update();
                                            return;
                                          }else{
                                          if (!buttonStateController
                                              .isRetweeted)
                                            buttonStateController.isRetweeted =
                                                true;
                                          else
                                            buttonStateController.isRetweeted =
                                                false;
                                          buttonStateController.update();
                                        }}),
                                    SizedBox(width: 5.h,),
                                    CustomFunctionButton(
                                        height: 37.h,
                                        width: 55.w,
                                        customIcon: Icons.share,
                                        IconColor: buttonStateController.share
                                            ? Colors.red
                                            : Colors.white,
                                        function: () {
                                          if(!loginSignupController.isLoggedIn){
                                            homeScreenController.showLoginPrompt=true;
                                            homeScreenController.update();
                                            return;
                                          }

                                        }),
                                  ],
                                ),
                              );
                            }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.r,top: 10.h),
                            child: Container(
                              height: 80.h,
                              width: 324.w,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    wordSpacing: 1.sp,
                                    decoration: TextDecoration.none),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Container(
                            width: 340.w,
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      height: 161.h,
                                      width: 358.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/prof_desc.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Positioned(
                                        right: 10.w,
                                        top: 5.h,
                                        child: Icon(
                                          Icons.cancel,
                                          color: Colors.white,
                                          size: 20.r,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.w),
                                  child: Container(
                                    width: 324.w,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus ",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                          decoration: TextDecoration.none),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          GetBuilder<HomeScreenController>(builder: (context) {
            return homeScreenController.showLoginPrompt
                ? Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Please Sign in or Log in",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                            height: 59.h,
                            width: 300.w,
                            text: "Sign up",
                            function: () {
                              Get.to(() => SignUpScreen());
                            }),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomButton(
                            height: 59.h,
                            width: 300.w,
                            text: "Log in",
                            function: () {
                              Get.to(() => LoginScreen());
                            }),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomButton(
                            height: 59.h,
                            width: 300.w,
                            text: "Cancel",
                            function: () {
                              homeScreenController.showLoginPrompt = false;
                              homeScreenController.update();
                            }),
                      ],
                    ),
                  )
                : Container();
          }),
        ],
      ),
    );
  }
}
