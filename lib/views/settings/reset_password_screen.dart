import 'package:fashionapp/views/settings/confirm_password_screen.dart';
import 'package:fashionapp/widgets/custom_button.dart';
import 'package:fashionapp/widgets/custom_textform_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/settings_controller.dart';
import '../../utils/constants.dart';

class ResetPasswordScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(
                color: Colors.white,width: 3.r
              )),
              child: Icon(Icons.question_mark,size: 40.r,color: Colors.white,)),

          SizedBox(height: 73.h),
          Text(
            "Reset Your Password",
            style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 40.h,),
         CustomTextFormField(text: "Enter Email/Phone number"),
SizedBox(height: 300.h,),
          CustomButton(text: "Continue",radius: 30.r,function: (){Get.to(()=>ConfirmPasswordScreen());})
        ],


      ),
    );
  }
}
