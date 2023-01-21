import 'package:fashionapp/controllers/toptrend_controller.dart';
import 'package:fashionapp/widgets/single_comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';



Widget CommentWidget(TopTrendController toptrendController){
  return Container(

    width: 290.w,
    decoration: BoxDecoration(
        color: Color(0xff282828),
        borderRadius: BorderRadius.circular(10.r),border: Border.all(color: Color(0xff888787),width: 0.5.r)),
    child: SingleChildScrollView(
      child: Column(
        children: [
GetBuilder<TopTrendController>(
  builder: (context) {
    return     Column(children: toptrendController.commentList,);
  }
),

          /*Commenting field*/
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
alignment: Alignment.center,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50.h,

                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextFormField(
                        controller: toptrendController.commentController,
                        onChanged: (commentController){
toptrendController.update();
                        },
                        cursorColor: Colors.white60,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color:Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText:  "Type Your Comment Here...",


                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff888787),
                          ),
                        ),
                      ),
                    ),
                  ),
                 GetBuilder<TopTrendController>(
                   builder: (context) {
                     return toptrendController.commentController.text!=""?GestureDetector(
                       onTap: (){
                         var newComment=SingleComment(userName: "Anna",userComment:toptrendController.commentController.text);
                         toptrendController.commentList.add(newComment);
                         toptrendController.commentController.clear();
                         toptrendController.update();

                       },
                       child: Container(height: 20.h,
                         alignment: Alignment.center,
                         width: 40.w,
decoration: BoxDecoration(
      gradient: LinearGradient(colors: gradientColor),
  borderRadius: BorderRadius.circular(10.r)
),
                       child:  Text("Post",style:GoogleFonts.poppins(
                           fontSize: 10.sp,
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.none),)
                       ),
                     ):Container();
                   }
                 )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}