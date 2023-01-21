import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashionapp/controllers/button_state_controller.dart';
import 'package:fashionapp/home/notification_screen.dart';
import 'package:fashionapp/home/other_trending_screen.dart';
import 'package:fashionapp/widgets/comment_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../controllers/bottom_nav_bar_controller.dart';
import '../controllers/toptrend_controller.dart';
import '../widgets/custom_function_button.dart';
import '../widgets/new_feed_container.dart';

class TopTrendingScreen extends StatelessWidget {
  ButtonStateController buttonStateController =
      Get.put(ButtonStateController());
  TopTrendController toptrenController = Get.put(TopTrendController());
  BottomNavigationPageController bottomNavigationPageController =
      Get.put(BottomNavigationPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              if (!toptrenController.sharePost) Get.back();
                              toptrenController.sharePost = false;
                              buttonStateController.share = false;
                              buttonStateController.update();
                              toptrenController.update();
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
                          alignment: Alignment.center,
                          width: 237.w,
                          height: 35.h,
                          child: Text(
                            "Top Trending",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        InkWell(
                          onTap: () {
                            if (!toptrenController.sharePost) {
                              toptrenController.sharePost = true;
                              toptrenController.update();
                            }
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 7.h,
                              ),
                              Container(
                                  height: 20.h,
                                  width: 32.w,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: buttonGrdient,
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Icon(
                                    Icons.share,
                                    size: 12.r,
                                    color: Colors.white,
                                  )),
                              Text(
                                "16 k",
                                style: GoogleFonts.poppins(
                                    fontSize: 7.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(NotificationScreen());
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
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Top Trending",
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.sp,
                              decoration: TextDecoration.none),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {
                            Get.to(OtherTrendingScreen());
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            size: 29.r,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 400.h,
                        scrollDirection: Axis.horizontal,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        onPageChanged: (index, _) {
                          print("pic changed");
                        }),
                    items: [
                      NewFeedContainer(
                        image: "assets/trendingpic.png",
                        width: 300.w,
                        height: 400.h,
                      ),
                      NewFeedContainer(
                        image: "assets/trendingpic.png",
                        width: 300.w,
                        height: 400.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                        GetBuilder<ButtonStateController>(builder: (context) {
                      return Container(
                        width: 300.w,
                        child: Row(
                          children: [
                            CustomFunctionButton(
                                height: 30.h,
                                width: 49.w,
                                customIcon: Icons.thumb_up,
                                IconColor: buttonStateController.isLiked
                                    ? Colors.red
                                    : Colors.white,
                                function: () {
                                  if (!buttonStateController.isLiked)
                                    buttonStateController.isLiked = true;
                                  else
                                    buttonStateController.isLiked = false;
                                  buttonStateController.update();
                                  print(buttonStateController.isLiked);
                                }),
                            CustomFunctionButton(
                                height: 30.h,
                                width: 49.w,
                                customIcon: Icons.thumb_down,
                                IconColor: buttonStateController.isDisliked
                                    ? Colors.red
                                    : Colors.white,
                                function: () {
                                  if (!buttonStateController.isDisliked)
                                    buttonStateController.isDisliked = true;
                                  else
                                    buttonStateController.isDisliked = false;
                                  buttonStateController.update();
                                }),
                            CustomFunctionButton(
                                height: 30.h,
                                width: 49.w,
                                customIcon: Icons.chat_bubble,
                                IconColor: buttonStateController.openComment
                                    ? Colors.red
                                    : Colors.white,
                                function: () {
                                  if (!buttonStateController.openComment)
                                    buttonStateController.openComment = true;
                                  else
                                    buttonStateController.openComment = false;
                                  buttonStateController.update();
                                }),
                            Expanded(child: Container()),
                            CustomFunctionButton(
                                height: 30.h,
                                width: 49.w,
                                customIcon: Icons.repeat,
                                IconColor: buttonStateController.isRetweeted
                                    ? Colors.red
                                    : Colors.white,
                                function: () {
                                  if (!buttonStateController.isRetweeted)
                                    buttonStateController.isRetweeted = true;
                                  else
                                    buttonStateController.isRetweeted = false;
                                  buttonStateController.update();
                                }),
                            CustomFunctionButton(
                                height: 30.h,
                                width: 49.w,
                                customIcon: Icons.share,
                                IconColor: buttonStateController.share
                                    ? Colors.red
                                    : Colors.white,
                                function: () {
                                  if (!buttonStateController.share)
                                    buttonStateController.share = true;
                                  else
                                    buttonStateController.share = false;
                                  buttonStateController.update();
                                  if (!toptrenController.sharePost) {
                                    toptrenController.sharePost = true;
                                    toptrenController.update();
                                  }
                                }),
                          ],
                        ),
                      );
                    }),
                  ),
                  /*Comment area */
                  GetBuilder<ButtonStateController>(builder: (context) {
                    return buttonStateController.openComment
                        ? CommentWidget(toptrenController)
                        : Container();
                  }),
                ],
              ),
            ),
          ),
          GetBuilder<TopTrendController>(builder: (context) {
            return toptrenController.sharePost == true
                ? Positioned(
                    bottom: 0,
                    child: Container(
                      height: 419.h,
                      width: 394.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.r),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/zain.png"),
                                  radius: 30.r,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jhon Smith",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          decoration: TextDecoration.none),
                                    ),
                                    Text(
                                      "@user_name",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Container(
                                  width: 31.w,
                                  height: 31.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 130.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Color(0xffF1F1F1)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.r),
                                  child: TextFormField(
                                    onChanged: (commentController) {},
                                    cursorColor: Colors.white60,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      hintText:
                                          "Say Something about this Post...",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      hintStyle: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.w, vertical: 10.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            height: 23.h,
                                            alignment: Alignment.center,
                                            width: 70.w,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: gradientColor),
                                                borderRadius:
                                                    BorderRadius.circular(4.r)),
                                            child: Text(
                                              "Share Now",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.none),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Share to Other Social Media",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 86.h,
                            width: 320.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Color(0xffF1F1F1)),
                            child: Padding(
                              padding: EdgeInsets.all(20.r),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: buttonGrdient,
                                                    begin: Alignment.topCenter,
                                                    end:
                                                        Alignment.bottomCenter),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            child: Icon(
                                              Icons.whatsapp,
                                              size: 28.r,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Text(
                                        "WhatsApp",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: buttonGrdient,
                                                    begin: Alignment.topCenter,
                                                    end:
                                                        Alignment.bottomCenter),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r)),
                                            child: Icon(
                                              Icons.facebook_sharp,
                                              size: 15.r,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Text(
                                        "Facebook",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  colors: buttonGrdient,
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter),
                                            ),
                                            child: ImageIcon(
                                              AssetImage("assets/insta.png"),
                                              size: 15.r,
                                              color: Colors.white,
                                            )),
                                      ),
                                      Text(
                                        "Instagram",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000),
                                            decoration: TextDecoration.none),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  colors: buttonGrdient,
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter),
                                            ),
                                            child: ImageIcon(
                                              AssetImage("assets/twitter.png"),
                                              size: 15.r,
                                              color: Colors.white,
                                            )),
                                        Text(
                                          "Twitter",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000000),
                                              decoration: TextDecoration.none),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  colors: buttonGrdient,
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter),
                                            ),
                                            child: ImageIcon(
                                              AssetImage("assets/twitter.png"),
                                              size: 15.r,
                                              color: Colors.white,
                                            )),
                                        Text(
                                          "LinkedIn",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000000),
                                              decoration: TextDecoration.none),
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
                    ),
                  )
                : Container();
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: BottomNavigationPageController.to.currentIndex.value,
        onTap: BottomNavigationPageController.to.changePage,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cases_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                height: 39.h,
                width: 80.w,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: gradientColor),
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wechat_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
