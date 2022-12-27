import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../../widgets/category_option.dart';

class ProfileDescriptionScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w,bottom: 10.h),
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
                Text("Description",style: textStyle,),
                GestureDetector(
                  onTap: () {
Get.back();
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

          Container(
              height: 240.h,
              width: 329.w,
              child: Text(OverContent,
                  style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      color: Colors.white,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none))),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
                height: 222.h,
                width: 358.w,
                child: Column(
                  children: [
                  Container(
                  height: 161.h,
                  width: 358.w,
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/prof_desc.png"),fit: BoxFit.fill

                  )),
                  ),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [

                        Text("hello this is a sample",
                            style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                color: Colors.white,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none)),
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
                height: 222.h,
                width: 358.w,
                child: Column(
                  children: [
                  Container(
                    decoration: BoxDecoration(image: DecorationImage(
                        image: AssetImage("assets/prof_desc.png"),fit: BoxFit.fill

                    )),
                  height: 161.h,
                  width: 358.w,),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [

                        Text("I am the second sample text",
                            style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                color: Colors.white,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none)),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),

    );
  }
}
