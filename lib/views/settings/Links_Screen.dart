import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LinksScreen extends StatelessWidget {
  const LinksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                onTap: () {
    Get.back();
    },
      child: Icon(
        Icons.cancel_outlined,
        size: 30.r,
        color: Colors.white,
      )),

                Text(
                  "Links",
                  style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none),
                ),
                Icon(
                  Icons.done,
                  size: 30.r,
                  color: Color(0xff0096FF),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
            child: Row(

              children: [
              Container(height: 30.h,width: 30.h,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: Icon(Icons.link,size: 20.r,color: Colors.black,)
                ,),
SizedBox(width: 5.w,),
                Text(
                  "Youtube.com/channel/",
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
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Row(

              children: [
              Container(height: 30.h,width: 30.h,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: Icon(Icons.facebook_sharp,size: 20.r,color: Colors.black,)
                ,),
SizedBox(width: 5.w,),
                Text(
                  "Facebook/channel/",
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
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Row(

              children: [
              Container(height: 30.h,width: 30.h,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: Icon(Icons.photo_camera,size: 20.r,color: Colors.black,)
                ,),
SizedBox(width: 5.w,),
                Text(
                  "Instagram.com/channel/",
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
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Row(

              children: [
              Container(height: 30.h,width: 30.h,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: Icon(Icons.whatsapp,size: 20.r,color: Colors.black,)
                ,),
SizedBox(width: 5.w,),
                Text(
                  "Whatsapp.com/channel/",
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
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
            child: Row(

              children: [
              Container(height: 30.h,width: 30.h,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),child: ImageIcon(AssetImage("assets/twitter.png"),size: 20.r,color: Colors.black,)
                ,),
SizedBox(width: 5.w,),
                Text(
                  "twitter.com/channel/",
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



        ]));
  }
}
