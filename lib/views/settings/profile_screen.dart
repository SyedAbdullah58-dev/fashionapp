import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/ApplyJob/applyjob_screen.dart';
import 'package:fashionapp/views/Friends/favourites_screen.dart';
import 'package:fashionapp/views/Friends/friends_screen.dart';
import 'package:fashionapp/views/settings/profile_setting_screen.dart';
import 'package:fashionapp/widgets/profile_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../controllers/job_apply_controller.dart';

class ProfileScreen extends StatelessWidget {

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
                      child: Text("Yes, Logout",style: textStyle,),
                    ),
                  ),
                ],
              )
            ],
          ),
          minHeight: 0.h,
          maxHeight: 276.h,
          body:Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 10.w),
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
                        "Profile",
                        style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              CircleAvatar(
                backgroundImage: AssetImage("assets/zain.png"),
                radius: 50.r,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Feroz Khan",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none)),
                  SizedBox(
                    width: 5.w,
                  ),
                  ImageIcon(
                    AssetImage("assets/tick.png"),
                    color: Color(0xff4F48FF),
                    size: 15.r,
                  ),
                ],
              ),
              Text("Islamabad,Pakistan",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: Colors.white60,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none)),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text("Account Settings",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.white,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none)),
                  ),
                ],
              ),
              ProfileOptions(
                  optIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30.r,
                  ),
                  onTap: () {
                    Get.to(() => ProfileSettingScreen());
                  },
                  optTitle: "Settings"),
              ProfileOptions(
                  onTap: () {
                    Get.to(() => ApplyJobScreen());
                  },
                  optIcon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 30.r,
                  ),
                  optTitle: "Post job"),
              ProfileOptions(
                  optIcon: Icon(
                    Icons.person_pin_outlined,
                    color: Colors.white,
                    size: 30.r,
                  ),
                  onTap: () {
                    Get.to(() => FriendsScreen());

                  },
                  optTitle: "Friends"),
              ProfileOptions(
                optIcon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 30.r,
                ),
                optTitle: "Favourites",
                onTap: () {
                  Get.to(() => FavouritesScreen());

                },
              ),

              ProfileOptions(
                  optIcon: Icon(
                    Icons.chat_outlined,
                    color: Colors.white,
                    size: 30.r,
                  ),
                  optTitle: "Chat and helps"),
              ProfileOptions(
                onTap: (){panelController.open();},
                  optIcon: Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 30.r,
                  ),
                  optTitle: "Logout"),
            ],
          ),
      ),

    );
  }
}
