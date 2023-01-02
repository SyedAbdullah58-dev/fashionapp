import 'package:fashionapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/settings_controller.dart';

class ChangePasswordScreen extends StatelessWidget {

  SettingController settingController= Get.put(SettingController());
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
                    "Security",
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

          Padding(
            padding:EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(

              children: [
                Text(
                  "Dark Mood",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                Expanded(child: Container()),
                GetBuilder<SettingController>(
                    builder: (context) {
                      return Switch(
                        activeColor: Colors.deepPurple,
                          value: settingController.rememberMe, onChanged: (value){
                        settingController.rememberMe=value;
                        settingController.update();

                      });
                    }
                )
              ],
            ),
          ),
          SizedBox(height: 240.h,),
          Container(
            alignment: Alignment.center,
            height: 49.h,width: 319.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)
          ,color: Color(0xff282828),
          ),
            child: Text("Change Password",style: textStyle,),

          )
        ],


      ),
    );
  }
}
