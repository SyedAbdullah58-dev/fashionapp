import 'dart:ui';

import 'package:fashionapp/constants.dart';
import 'package:fashionapp/controllers/job_apply_controller.dart';
import 'package:fashionapp/widgets/new_feed_container.dart';
import 'package:fashionapp/widgets/option_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCelebrityScreen extends StatelessWidget {
  JobApplyController jobApplyController = Get.put(JobApplyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
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
                  GetBuilder<JobApplyController>(builder: (context) {
                    return jobApplyController.showSearchBar == false
                        ? Container(
                            alignment: Alignment.center,
                            width: 237.w,
                            height: 35.h,
                            child: Text(
                              "Search",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 1.sp,
                                  decoration: TextDecoration.none),
                            ),
                          )
                        : Container(
                            width: 237.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.r)),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 15.r,
                                  )),
                            ),
                          );
                  }),
                  Expanded(child: Container())
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        size: 29.r,
                        color: Colors.white,
                      )),
                  Expanded(child: Container()),
                  GestureDetector(
                      child: Container(
                          height: 41.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: ImageIcon(
                            AssetImage("assets/filter.png"),
                            size: 29.r,
                            color: Colors.deepPurple,
                          ))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OptionButton(title: "Artist"),
                  OptionButton(title: "Blogger"),
                  OptionButton(title: "Musician"),
                  OptionButton(title: "Clothing"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OptionButton(title: "Artist"),
                  OptionButton(title: "Blogger"),
                  OptionButton(title: "Musician"),
                  OptionButton(title: "Clothing"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Company",
                    style: textStyle,
                  )
                ],
              ),
            ),
            Container(
              height: 180.h,
              width: 329.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    colors: gradientColor,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/zain.png"),
                          radius: 27.r,
                        ),
                        Text("24\$ \nPrice",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none))
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Senior Drama Actor",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none))
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pakistan",
                            style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                color: Colors.white,

                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none))
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                    child: Row(
                      children: [
                        Text("24",
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
fontWeight: FontWeight.bold,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none)),SizedBox(width: 4.w,),

                        Text("Jobs Available",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.white,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none)),
                        Expanded(child: Container()),
                        GestureDetector(
                          child: Container(
                            child: Row(
                              children: [
                                Text("show All",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                        wordSpacing: 1.sp,
                                        decoration: TextDecoration.none)),Icon(Icons.arrow_forward,size: 20.r,color: Colors.white,),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recent Jobs",
                    style: textStyle,
                  )
                ],
              ),
            ),
          for(int i=0;i<2; i++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Container(
              height: 71.h,
              width: 329.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r)),
child:  Padding(
  padding: EdgeInsets.only(top: 5.h,left: 10.w,right: 10.w),
  child: Row(
    children: [
    Container(
    height: 60.h,
    width: 60.w,
    decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/zain.png"),

  )
    )),
      SizedBox(
        width: 5.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
              "Drama Actor",
              style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                  decoration: TextDecoration.none),
            ),
            Text(
              "Nerdware Hub (Full Time) \n Islamabad Pakistan",
              style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
        ],
      ),
      Expanded(child: Container()),
      Icon(Icons.arrow_forward_ios,color:Color(0xff888787),size: 25.r,)
    ],
  ),
),
                        ),
          ),


          ],


        ),
      ),
    );
  }
}
