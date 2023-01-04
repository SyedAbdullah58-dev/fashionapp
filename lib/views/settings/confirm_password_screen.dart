import 'package:fashionapp/views/settings/password_success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textform_field.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({Key? key}) : super(key: key);

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
              height: 59.h,width: 59.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,border:Border.all(
                  color: Colors.white,width: 3.r
              )),
              child: Icon(Icons.lock,size: 40.r,color: Colors.black,)),

          SizedBox(height: 73.h),
          Text(
            "Reset Your Password",
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
              "We have sent a four digit cofe on your phone/email",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),textAlign: TextAlign.center,
            ),
          ),


          SizedBox(height: 40.h,),
          CustomTextFormField(text: "Four Digit Code"),
          SizedBox(height: 10.h,),
          CustomTextFormField(text: "New Password"),
          SizedBox(height: 10.h,),
          CustomTextFormField(text: "Confirm Password"),
          SizedBox(height: 150.h,),
          CustomButton(text: "Continue",radius: 30.r,function: (){Get.to(()=>PasswordSuccessScreen());})
        ],


      ),
    );
  }
}
