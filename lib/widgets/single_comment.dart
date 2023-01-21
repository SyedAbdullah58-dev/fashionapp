import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SingleComment({userName, userComment}) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8.r),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/image2.png"),
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 50.h,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            userName,
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                color: Color(0xff888787),
                                decoration: TextDecoration.none),
                            maxLines: 3,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              children: [
                                Container(
                                  width: 150.w,
                                  child: Text(
                                    userComment,
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        color: Color(0xff888787),
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
  PopupMenuButton(

icon: Icon(Icons.more_vert,color: Colors.white60,size: 20.r,),
      color: Colors.white60,
      itemBuilder:  (BuildContext context) {
  return {'Edit', 'Delete'}.map((String choice) {
  return PopupMenuItem<String>(
    height: 35.h,
  value: choice,
  child: Column(
    children: [
      Text(choice,style: GoogleFonts.poppins(
        fontSize: 16.r,
        color: Colors.black,fontWeight: FontWeight.bold
      ),
      )
    ],
  ),
  );   }).toList();})
          ],
        ),
      ),
      Divider(
        color: Color(0xff888787),
        thickness:1.5.r,
      ),
    ],
  );
}
