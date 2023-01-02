import 'package:fashionapp/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/settings/profile_screen.dart';

class ChatScreen extends StatelessWidget {
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
                BackButton(
                  onPressed: () {
                    Get.back();
                  },
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 237.w,
                  height: 35.h,
                  child: Text(
                    "Feroz",
                    style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1.sp,
                        decoration: TextDecoration.none),
                  ),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    Get.to(ProfileScreen());
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/zain.png"),
                    radius: 20.r,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      for(int i=0;i<3;i++)
                      Padding(
                        padding:  EdgeInsets.all(8.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(

                              constraints: BoxConstraints(maxWidth: 200.w),
                              decoration: BoxDecoration(
                                  color: Color(0xffFEFEFE),
                                  
                                  borderRadius: BorderRadius.circular(26.r)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.r),
                                  child: Text(
                                    "Hello, how are you? I am trying to reach out you through your personal mobile \n So where are you?",textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Colors.black,
                                        wordSpacing: 1.sp,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      for(int i=0;i<4;i++)
                      Padding(
                        padding:  EdgeInsets.all(8.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.all(3),
                              constraints: BoxConstraints(maxWidth: 200.w),
                              decoration: BoxDecoration(
                                  color: Color(0xffFEFEFE),
                                  gradient: LinearGradient(
                                      colors: gradientColor,
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  borderRadius: BorderRadius.circular(26.r)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:  EdgeInsets.all(8.0.r),
                                  child: Text(
                                    "Hello, I am out of office. Sorry for inconvenience",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        wordSpacing: 1.sp,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
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
          ),
          Container(
            height: 87.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight:Radius.circular(20.r)
              ),
              gradient:LinearGradient(colors: gradientColor,begin:Alignment.topCenter ,end: Alignment.bottomCenter)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.emoji_emotions_outlined,color: Colors.white,size: 30.r,),
                  Container(
                    height: 60.h,
width: 280.w,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20.r),
                        ),
                    child: Center(
                      child: TextFormField(


                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
//helperText: hinttext
                          focusColor: Colors.black,
                          focusedBorder:OutlineInputBorder(

                            borderRadius: BorderRadius.circular(20.r),
                          ) ,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 16.h,
                            horizontal: 20.w,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.grey,
                          ),
                          hintText: "Type Text here",
                          border: InputBorder.none,
                        ),
                      ),
                    ),

                  ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
              child: ImageIcon(AssetImage("assets/tiltarrow.png"),size: 20.r,color: Colors.black,),)
                ],
              ),
            ),
          )
        ]));
  }
}
