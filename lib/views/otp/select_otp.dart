import 'package:fashionapp/views/otp/email_otp.dart';
import 'package:fashionapp/views/otp/phone_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textform_field.dart';
import '../login/signup_screen.dart';

class SelectOtp extends StatelessWidget {
  const SelectOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30.r,
                    ),
                  ),

                ),
                SizedBox(width: 10.w,),

                Text("OTP Verification",style:GoogleFonts.poppins(
                    fontSize: 26.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.sp,
                    decoration: TextDecoration.none),)
              ],
            ),
          ),
          SizedBox(
            height: 149.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){Get.to(EmailOTP());},
                child: Container(
                    alignment: Alignment.center,
                    height: 57.h,
                    width: 344.w,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(10.r),),
                    child:Text("Email",style: textStyle,)),
              ),
              SizedBox(height: 25.h),
              InkWell(
                onTap: (){
                  Get.to(PhoneOTP());
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 57.h,
                    width: 344.w,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(10.r),),
                    child:Text("Phone Number",style: textStyle,)),
              ),
            ],),
          SizedBox(
            height: 30.h,
          ),
        SizedBox(height: 70.h,),
          GestureDetector(
            onTap: (){
              Get.back();

            },
            child: Text("back to login",style:GoogleFonts.poppins(
                fontSize: 16.sp,
                color: dullTextColor,

                wordSpacing: 1.sp,
                decoration: TextDecoration.none) ,),
          ),
          SizedBox(height: 149.h,),
          CustomButton(    height: 59.h,
              width: 344.w,text:"Continue",function: (){}),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Forgot Password?",style:  GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: dullTextColor,

                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",style:  GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: dullTextColor,

                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),),
              SizedBox(width: 5.w,),
              GestureDetector(
                onTap: (){},
                child: Text("Sign up",style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.sp,
                    decoration: TextDecoration.none)),
              )
            ],
          ),

        ]));

  }
}
