import 'package:fashionapp/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class PostJobScreen extends StatelessWidget {


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
GestureDetector(
    onTap:(){Get.back();},
    child: Icon(Icons.arrow_back_ios,size: 25.r,color: Colors.white,)),

                SizedBox(
                  width: 20.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 237.w,
                      height: 35.h,
                      child: Text(
                        "Post a Job",
                        style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
                    ),

                  ],
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.more_vert_outlined,
                  size: 20.r,
                  color: Color(0xFF5F6368),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 5.h),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Job Title",style: textStyle,),
                    ],
                  ),
                ),
                  CustomTextFormFiled()
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
