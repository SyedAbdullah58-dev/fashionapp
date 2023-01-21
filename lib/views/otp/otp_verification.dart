import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/set_passsword_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/otp_controller.dart';
import '../../widgets/custom_button.dart';

class OTPVerification extends StatelessWidget {
  OtpController otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 46.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 215.h,
                width: 215.h,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Saly-11.png"))),
              ),
            ],
          ),
          SizedBox(height: 25.h,),
          Text(
            "OTP VERIFICATION",
            style: GoogleFonts.poppins(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                wordSpacing: 1.sp,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: 10.h,),
          Text(
            "Enter the OTP sent to - +92-9483948384",
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              color: Colors.white60,
              decoration: TextDecoration.none),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 7.w),
                child: Container(
                  child: TextField(
                    controller: otpController.otp1,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        counterText: "", border: InputBorder.none),
                  ),
                  height: 60.h,
                  width: 61.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter
                      ),
                      borderRadius: BorderRadius.circular(15.r)),
                ),
              ) ,
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 7.w),
                child: Container(
                  child: TextField(
                    controller: otpController.otp2,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        counterText: "", border: InputBorder.none),
                  ),
                  height: 60.h,
                  width: 61.w,
                  decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter
    ),
                      borderRadius: BorderRadius.circular(15.r)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 7.w),
                child: Container(
                  child: TextField(
                    controller: otpController.otp3,
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.white,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        counterText: "", border: InputBorder.none),
                  ),
                  height: 60.h,
                  width: 61.w,
                  decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter
    ),
                      borderRadius: BorderRadius.circular(15.r)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 7.w),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (string) {
                      otpController.update();
                      if (otpController.otp1.text != "" &&
                          otpController.otp2.text != "" &&
                          otpController.otp3.text != "" &&
                          otpController.otp4.text != "") print("success");
                    },
                    maxLength: 1,
                    controller: otpController.otp4,
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        counterText: "", border: InputBorder.none),
                  ),
                  height: 60.h,
                  width: 61.w,
                  decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter
    ),
                      borderRadius: BorderRadius.circular(15.r)),
                ),
              ),

            ],
          ),
          Text("00:120 Sec",style: GoogleFonts.poppins(
              fontSize: 20.sp,
color: Colors.white,
              wordSpacing: 1.sp,
              decoration: TextDecoration.none),),
          SizedBox(height: 25.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive code? ",style: GoogleFonts.poppins(
                  fontSize: 17.sp,
color: Colors.white,
                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),),
              Text("Re-send",style: GoogleFonts.poppins(
                  fontSize: 17.sp,
color: Colors.white60,
                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),),
            ],
          ),
          SizedBox(height: 45.h,),
          CustomButton(    height: 59.h,
              width: 344.w,text:"Submit",function: (){Get.to(SetPasswordScreen());}),

        ],
      ),
    );
  }
}
