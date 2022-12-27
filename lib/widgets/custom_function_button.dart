import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

Widget CustomFunctionButton({height,width,customIcon, IconColor,function}){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 1.w),
    child: Column(
      children: [
        GestureDetector(
          onTap:function,
          child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: buttonGrdient,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Icon(
                customIcon,
                size: 15.r,
                color: IconColor,
              )),
        ),
        Text("11k",style: TextStyle(color: Colors.white60,fontSize: 12.sp),)
      ],
    ),
  );
  
}