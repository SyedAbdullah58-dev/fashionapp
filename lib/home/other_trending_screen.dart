import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashionapp/home/upload_photo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../controllers/button_state_controller.dart';
import '../controllers/toptrend_controller.dart';
import '../widgets/comment_widget.dart';
import '../widgets/custom_function_button.dart';
import '../widgets/new_feed_container.dart';
import 'notification_screen.dart';

class OtherTrendingScreen extends StatelessWidget {

  ButtonStateController buttonStateController =
  Get.put(ButtonStateController());
  TopTrendController toptrenController=Get.put(TopTrendController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Get.back();
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
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
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
                    onTap: (){
                      if(toptrenController.index.isEqual(2)){
                        Get.to(UploadPhotoScreen());
                      return;
                      }
                      toptrenController.index++;
                      toptrenController.update();
                      print(toptrenController.index);
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


                GetBuilder<TopTrendController>(
                  builder: (context) {
                    return NewFeedContainer(
                      width: 359.w,
                      height: 350.h,
                    );
                  }
                ),


            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h,bottom: 10.h),
              child: GetBuilder<ButtonStateController>(builder: (context) {
                return Container(
                  width: 300.w,
                  child: Row(
                    children: [
                      CustomFunctionButton(
                          height: 35.h,
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
                          height: 35.h,
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
                          height: 35.h,
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
                          height: 35.h,
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
                          height: 35.h,
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
    );
  }
}
