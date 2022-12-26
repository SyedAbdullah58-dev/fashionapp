import 'package:fashionapp/views/settings/profile_description_screen.dart';
import 'package:fashionapp/widgets/category_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../controllers/settings_controller.dart';
import '../../widgets/option_button.dart';

class EditProfileScreen extends StatelessWidget {
  SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  onTap: () {

                  },
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
          CircleAvatar(
            backgroundImage: AssetImage("assets/zain.png"),
            radius: 50.r,
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
                SizedBox(height:5.w ,),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.r,
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
              SizedBox(height:5.w ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20.r,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
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
                 onTap: (){
                   Get.to(()=>ProfileDescriptionScreen());
                 },
                 child: Row(
                   children: [
                     Icon(   Icons.edit,
                       color: Colors.white,
                       size: 20.r,),
                      SizedBox(width:10.w ,),
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
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
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

                Text(
                  "None",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                SizedBox(height:5.w ,),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.r,
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
              SizedBox(height:5.w ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20.r,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
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
                SizedBox(height:5.w ,),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.r,
                )
              ],
            ),
          ),

        ],
      ),

    );
  }
}
