import 'package:fashionapp/controllers/settings_controller.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/settings/edit_profile_screen.dart';
import 'package:fashionapp/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfileSettingScreen extends StatelessWidget {
  SettingController settingController = Get.put(SettingController());
  final panelController= PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SlidingUpPanel(
        controller: panelController,

        borderRadius: BorderRadius.circular(40.r),
        panel: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              height: 3.h,
              width: 39.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.r)),
            ),
            SizedBox(
              height: 34.h,
            ),
            Text(
              "Logout",
              style: GoogleFonts.poppins(
                color: Color(0xff82067B),
                fontWeight: FontWeight.bold,
                fontSize: 20.r,
              ),
            ),
            Divider(
              thickness: 2.r,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Are you sure you want to log out ?",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 18.r,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){panelController.close();},
                  child: Container(
                    alignment: Alignment.center,
                    height: 55.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        color: Colors.black),
                    child: Text("Cancel",style: textStyle,),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 55.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        color: Color(0xff82067B)),
                    child: Text("Cancel",style: textStyle,),
                  ),
                ),
              ],
            )
          ],
        ),
        minHeight: 0.h,
        maxHeight: 276.h,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 29.r,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 10.w),
              child: Row(
                children: [
                  Text(
                    "Settings",
                    style: GoogleFonts.poppins(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/zain.png"),
                    radius: 40.r,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Feroz Khan",
                        style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "fedikhan@gmail.com \n"
                        "Islamabad,Pakistan",
                        style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => EditProfileScreen());
                      },
                      child: ImageIcon(
                        AssetImage("assets/editicon.png"),
                        color: Colors.white,
                        size: 40.r,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 71.h,
                width: 329.w,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: 20.r,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Settings",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      GetBuilder<SettingController>(builder: (context) {
                        return Switch(
                            value: settingController.privateAccount,
                            onChanged: (value) {
                              settingController.privateAccount = value;
                              settingController.update();
                            });
                      })
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 71.h,
                width: 329.w,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: 20.r,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dark Mode",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      GetBuilder<SettingController>(builder: (context) {
                        return Switch(
                            value: settingController.darkMood,
                            onChanged: (value) {
                              settingController.darkMood = value;
                              settingController.update();
                            });
                      })
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 71.h,
                width: 329.w,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.security_rounded,
                        size: 20.r,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Security",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 71.h,
                width: 329.w,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/bell.png"),
                        size: 20.r,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notification",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                height: 71.h,
                width: 329.w,
                decoration: BoxDecoration(
                    color: Color(0xff282828),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/bell.png"),
                        size: 20.r,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Disable Ads",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
