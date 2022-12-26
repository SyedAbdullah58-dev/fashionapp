import 'package:fashionapp/constants.dart';
import 'package:fashionapp/constants.dart';
import 'package:fashionapp/constants.dart';
import 'package:fashionapp/constants.dart';
import 'package:fashionapp/constants.dart';
import 'package:fashionapp/constants.dart';
import 'package:fashionapp/home/toptrending_screen.dart';
import 'package:fashionapp/widgets/new_feed_container.dart';
import 'package:fashionapp/widgets/profile_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_screen_controller.dart';
import '../widgets/custom_home_container.dart';
import '../widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
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
                    width: 237.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: TextField(
                      style: TextStyle(fontSize: 14.sp,),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            size: 15.r,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                      onTap: () {},
                      child: ImageIcon(
                        AssetImage("assets/bell.png"),
                        size: 29.r,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Top Trending",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "See More",
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: Colors.white,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    customHomeContainer(
                      likes: "23",
                      dislikes: "34",
                      image: "assets/image1.png",
                      function: (){Get.to(TopTrendingScreen());},
                    ),
                    customHomeContainer(
                      likes: "23",
                      dislikes: "34",
                      image: "assets/image2.png",
                      function: (){},
                    ),
                    customHomeContainer(
                      likes: "23",
                      dislikes: "34",
                      image: "assets/image3.png",
                      function: (){},
                    ),
                    customHomeContainer(
                      likes: "23",
                      dislikes: "34",
                      image: "assets/image4.png",
                      function: (){},
                    ),
                    customHomeContainer(
                      likes: "23",
                      dislikes: "34",
                      image: "assets/image4.png",
                      function: (){},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProfileContainer(image: "assets/profile1.png"),
                    ProfileContainer(image: "assets/profile2.png"),
                    ProfileContainer(image: "assets/profile1.png"),
                    ProfileContainer(image: "assets/profile2.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "New Feed",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 24.h,
                    width: 95.w,
                    alignment: Alignment.center,
                    child: Row(

                      children: [
                    ImageIcon(AssetImage("assets/heart.png"),color: Color(0xffEA2E05),size: 30.r,),
                      SizedBox(width: 5.w,),
                      Text("Follow",style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.white60,

                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none),),

                    ],),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Colors.white),
                        color: Colors.black),
                    
                  )
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                NewFeedContainer(image: "assets/profile1.png",
                  width: 356.w,
                  height: 325.h,
                ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
