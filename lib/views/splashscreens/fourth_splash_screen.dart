import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/login/login_screen.dart';
import 'package:fashionapp/views/splashscreens/Third_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthSplashScreen extends StatelessWidget {
  const FourthSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash_pic4.png"), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 400.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Best \nModels",
                  style: GoogleFonts.poppins(
                      fontSize: 48.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Your brand",
                  style: GoogleFonts.poppins(
                      fontSize: 24.sp,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50.h,),

                FloatingActionButton(onPressed: (){
                  Get.offAll(LoginScreen());
                 },child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      gradient: LinearGradient(colors: gradientColor,begin: Alignment.topCenter)
                  ),
                ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 720.h,right: 300.w),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(

                child: Icon(
                  Icons.arrow_back,color: Colors.white,
                  size: 40.r,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
