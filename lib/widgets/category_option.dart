import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

Widget CategoryOption({title}){

    return Container(
      alignment: Alignment.center,
      height: 35.h,
      width: 75.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: LinearGradient(
            colors: gradientColor,
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter),
      ),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(title,style: GoogleFonts.poppins(
              fontSize: 13.sp,
              color: Colors.white,
              wordSpacing: 1.sp,
              decoration: TextDecoration.none),),
        )
    );


}