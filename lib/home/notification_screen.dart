import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
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
            Container(
              alignment: Alignment.center,
              width: 237.w,
              height: 35.h,
              child: Text(
                "Notification",
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
          Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notifications",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),
            ),
            Expanded(child: Container()),
            Text(
              "Mark all as read",
              style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.white,
                  wordSpacing: 1.sp,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for(int i=0;i<10;i++)
                    Padding(
                      padding: EdgeInsets.all(20.r),
                      child: Row(

                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/image2.png"),
                            radius: 30.r,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jhon Smith",
                                style: GoogleFonts.poppins(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                              Text(
                                "Add two files to Competitors task",
                                style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: 58.w,
                            child: Text(
                              "2 min ago",
                              style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ]));
  }
}
