import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SingleComment({userName,userComment}){

  return   Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8.r),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage:
              AssetImage("assets/image2.png"),
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              children: [
                Text(
                  userName,
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: Color(0xff888787),
                      decoration: TextDecoration.none),
                ),
                Text(
                 userComment,
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none),
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

      Divider(
        color: Colors.white60,
      ),  ],
  );

}