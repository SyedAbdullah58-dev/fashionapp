import 'package:fashionapp/views/settings/Links_Screen.dart';
import 'package:fashionapp/views/settings/profile_description_screen.dart';
import 'package:fashionapp/views/settings/project_type_screen.dart';
import 'package:fashionapp/views/settings/select_profile_category.dart';
import 'package:fashionapp/widgets/category_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../utils/constants.dart';
import '../../controllers/settings_controller.dart';
import '../../widgets/option_button.dart';

class EditProfileScreen extends StatelessWidget {
  SettingController settingController = Get.put(SettingController());
  final panelController= PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SlidingUpPanel(
        controller: panelController,

        borderRadius: BorderRadius.circular(40.r),
    panel: Column(
    children: [
    SizedBox(height: 10.h),
    Container(
    height: 8.h,
    width: 79.w,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(5.r)),
    ),
    SizedBox(
    height: 34.h,
    ),
    Row(

      children: [
        SizedBox(width: 32.w,),
        GestureDetector(
          onTap: (){

          },
          child: Text(
          "Change Profile",
          style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 18.r,
            fontWeight:FontWeight.bold
          ),
          ),
        ),
      ],
    ),
    Divider(
    thickness: 2.r,
    ),
    SizedBox(
    height: 20.h,
    ),
      Row(

        children: [
          SizedBox(width: 32.w,),
          GestureDetector(
            onTap: (){

            },
            child: Text(
              "New Profile Photo",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18.r,
                  fontWeight:FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    SizedBox(
    height: 30.h,
    ),
      Row(

        children: [
          SizedBox(width: 32.w,),
          GestureDetector(
            onTap: (){

            },
            child: Text(
              "Import From Facebook",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18.r,
                  fontWeight:FontWeight.bold
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 30.h,
      ),
      Row(

        children: [
          SizedBox(width: 32.w,),
          GestureDetector(
            onTap: (){

            },
            child: Text(
              "Use Avatar",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18.r,
                  fontWeight:FontWeight.bold
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 30.h,
      ),
      Row(

        children: [
          SizedBox(width: 32.w,),
          GestureDetector(
            onTap: (){

            },
            child: Text(
              "Remove Profile Photo",
              style: GoogleFonts.poppins(
                  color: Colors.red,
                  fontSize: 18.r,
                  fontWeight:FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ],
    ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.cancel_outlined,
                      size: 29.r,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.done,
                      size: 29.r,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: (){
                panelController.open();
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/zain.png"),
                radius: 50.r,
              ),
            ),
            Text(
              "Change Profile",
              style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Select Category",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "None",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SelectProfileCategory());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20.r,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryOption(title: "Artist"),
                  CategoryOption(title: "Education"),
                  CategoryOption(title: "Gamer"),
                  CategoryOption(title: "Writer"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryOption(title: "Photographer"),
                  CategoryOption(title: "Community"),
                  CategoryOption(title: "Video Creator"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SelectProfileCategory());
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "See More",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 5.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20.r,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Row(
                children: [
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProfileDescriptionScreen());
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20.r,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20.r,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 152.h,
                width: 329.w,
                child: Text(OverContent,
                    style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.white,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Row(
                children: [
                  Text(
                    "Project type",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ProjectTypeScreen());
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "None",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5.w,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20.r,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryOption(title: "Drama"),
                  CategoryOption(title: "Film"),
                  CategoryOption(title: "Song"),
                  CategoryOption(title: "Show"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See More",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                SizedBox(height: 5.w),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.r,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    "Links",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "None",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LinksScreen());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20.r,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    minHeight: 0.h,
    maxHeight: 376.h,)

    );
  }
}
