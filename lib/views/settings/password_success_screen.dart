import 'package:fashionapp/views/login/real_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../../widgets/custom_button.dart';
import 'confirm_password_screen.dart';

class PasswordSuccessScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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

              ],
            ),
          ),
          SizedBox(height: 50.h,),
          Container(
            alignment: Alignment.center,
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,

                gradient: LinearGradient(colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
            child: Icon(Icons.done,size: 50.r,color: Colors.white,),

          ),

          SizedBox(height: 20.h),
          Text(
            "Woo hoo!",
            style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 10.h,),
          Container(
            width: 303.w,
            child: Text(
              "Your password has been reset sucessfully! "
                  "Now login with your new password.",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.white,

                  decoration: TextDecoration.none),textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 250.h,),

          CustomButton(text: "Login",radius: 30.r,function: (){Get.to(()=>RealLogin());})
        ],


      ),
    );
  }
}
