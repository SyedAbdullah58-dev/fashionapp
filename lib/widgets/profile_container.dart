import 'package:fashionapp/views/settings/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget ProfileContainer({image}){
  return GestureDetector(
    onTap: (){
      Get.to(ProfileScreen());
    },
    child: Padding(
      padding:EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        width: 174.w,
        height: 174.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue,
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20.r)
        ),
      ),
    ),
  );
}