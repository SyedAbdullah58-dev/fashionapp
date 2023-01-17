import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ErrorText({text}){
  return  Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Row(
      children: [
        Text(text,style: GoogleFonts.poppins(
            fontSize: 12.sp,
            color: Colors.red,
            decoration: TextDecoration.none),),
      ],
    ),
  );

}