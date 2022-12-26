import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'custom_text.dart';

class customHomeContainer extends StatelessWidget {


  String likes;
  String dislikes;
  String image;
  dynamic function;
  customHomeContainer({required this.likes, required this.dislikes, required this.image,required this.function});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: InkWell(
        onTap: function,
        child: Container(

          height: 120.h,
          width: 82.w,
          child: Column(
            children: [
              Container(
                width: 82.w,
                height: 82.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r)),
                   ),
              ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 20.h,
                      width: 30.w,
                      decoration: BoxDecoration(

                        gradient: LinearGradient(colors: buttonGrdient,begin: Alignment.topCenter,end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Icon(Icons.thumb_up,size: 15.r,color: Colors.white,)),
                  SizedBox(width: 10.w,),
                  Container(
                      height: 20.h,
                      width: 30.w,
                      decoration: BoxDecoration(

                        gradient: LinearGradient(colors: buttonGrdient,begin: Alignment.topCenter,end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Icon(Icons.thumb_down,size: 15.r,color: Colors.white,)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(likes,style:GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 8.sp,color: Colors.white
                  )
                ),),
                SizedBox(width: 30.w,),
                Text(likes,style:GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 8.sp,color: Colors.white
                  )
                ),),

              ],)
            ],
          ),
        ),
      ),
    );
  }


}
