import 'package:fashionapp/constants.dart';
import 'package:fashionapp/views/ApplyJob/applyjob_screen.dart';
import 'package:fashionapp/views/settings/profile_setting_screen.dart';
import 'package:fashionapp/widgets/profile_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/job_apply_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
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
              onTap: (){Get.to(()=>ProfileSettingScreen());},
              optTitle: "Settings"),
          ProfileOptions(
            onTap: (){Get.to(()=>ApplyJobScreen());},
              optIcon: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 30.r,
                
              ),
              optTitle: "Post job"),
          ProfileOptions(
              optIcon:Icon(Icons.person_pin_outlined,color: Colors.white,size: 30.r,),

              optTitle: "Friends"),
          ProfileOptions(
              optIcon:Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 30.r,),

              optTitle: "Favourites"),
          ProfileOptions(
              optIcon:Icon(Icons.chat_outlined,color: Colors.white,size: 30.r,),

              optTitle: "Chat and helps"),
          ProfileOptions(
              optIcon:Icon(Icons.logout,color: Colors.white,size: 30.r,),

              optTitle: "Logout"),
        ],
      ),
    );
  }
}
