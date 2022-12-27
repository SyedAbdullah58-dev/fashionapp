import 'package:fashionapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/new_feed_container.dart';

class LinkScreen extends StatelessWidget {
  const LinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width : Get.width,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h,left: 10.w),
              child: Row(

                children: [
                  BackButton(
                    color: Colors.white,
                    onPressed: () {
                      print("On this Screen");
                      Get.back();
                    },
                  ),

                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 237.w,
                    height: 35.h,
                    child: Text(
                      "Links",
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
            for(int i=0;i<3;i++)
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      NewFeedContainer(image: "assets/profile1.png",height: 106.h,width: 106.w),
                      SizedBox(height: 5.h,),
                      Text(
                        "Facbook.com/channel/",
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      NewFeedContainer(image: "assets/profile1.png",height: 106.h,width: 106.w),
                      SizedBox(height: 5.h,),
                      Text(
                        "Facbook.com/channel/",
                        style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),



                ],
              ),
            ),


        ],),
      ),
    );
  }
}
