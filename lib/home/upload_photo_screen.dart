import 'package:fashionapp/home/Inbox_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constants.dart';
import '../controllers/bottom_nav_bar_controller.dart';
import '../controllers/toptrend_controller.dart';
import '../widgets/custom_function_button.dart';
import '../widgets/custom_home_container.dart';
import '../widgets/new_feed_container.dart';
import '../widgets/profile_container.dart';

class UploadPhotoScreen extends StatelessWidget {
  TopTrendController toptrendController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      "Upload Photo",
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
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/zain.png"),
                    radius: 20.r,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GetBuilder<TopTrendController>(builder: (context) {
                      return Column(
                        children: [
                          Container(
                            child: toptrendController.picker == null
                                ? Image.asset("assets/zain.png")
                                : Image.file(toptrendController.picker,),
                            width: 300.w,
                            height: 295.h,
                          ),
                        ],
                      );
                    }),
                    SizedBox(
                      height: 20.h,
                    ),
                    ImageIcon(
                      AssetImage("assets/uploadIcon.png"),
                      color: Colors.white,
                      size: 55.r,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Upload",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () async {
                          ImagePicker picker = ImagePicker();
                          var pic = await picker.pickImage(
                              source: ImageSource.gallery);
                          File file = new File(pic!.path);
                          toptrendController.picker = file;
                          toptrendController.update();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 62.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xff282828)),
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/addpic.png",
                                  ),
                                  color: Colors.white,
                                  size: 27.r,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Photo",
                                  style: textStyle,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 27.r)
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 62.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xff282828)),
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: Row(
                              children: [
                                //  ImageIcon(AssetImage("assets/addpic.png",),color: Colors.white,size: 27.r,),
                                Icon(Icons.videocam_rounded,
                                    color: Colors.white, size: 27.r),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Videos",
                                  style: textStyle,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 27.r)
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 62.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xff282828)),
                          child: Padding(
                            padding: EdgeInsets.all(10.r),
                            child: Row(
                              children: [
                                //  ImageIcon(AssetImage("assets/addpic.png",),color: Colors.white,size: 27.r,),
                                ImageIcon(
                                  AssetImage(
                                    "assets/page.png",
                                  ),
                                  color: Colors.white,
                                  size: 27.r,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Documents",
                                  style: textStyle,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 27.r)
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 82.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Color(0xff282828)),
                      child: Padding(
                        padding: EdgeInsets.all(10.r),
                        child: TextFormField(
                          controller: toptrendController.commentController,
                          onChanged: (commentController) {
                            toptrendController.update();
                          },
                          cursorColor: Colors.white60,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Say Something about this Photo",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 45.w, vertical: 20.h),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap:(){
                              Get.to(InboxScreen());
                            },
                            child: Container(
                                height: 38.h,
                                alignment: Alignment.center,
                                width: 84.w,
                                decoration: BoxDecoration(
                                    gradient:
                                        LinearGradient(colors: gradientColor),
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Text(
                                  "Post",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
