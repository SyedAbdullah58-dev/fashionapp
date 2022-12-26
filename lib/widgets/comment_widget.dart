import 'package:fashionapp/controllers/toptrend_controller.dart';
import 'package:fashionapp/widgets/single_comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';



Widget CommentWidget(TopTrendController toptrendController){
  return Container(
    height: 250.h,
    width: 240.w,
    decoration: BoxDecoration(
        color: Color(0xff282828),
        borderRadius: BorderRadius.circular(10.r)),
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
            padding: EdgeInsets.all(8.r),
            child: Container(
              height: 80.h,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: toptrendController.commentController,
                    onChanged: (commentController){
toptrendController.update();
                    },
                    cursorColor: Colors.white60,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText:  "Write your Comment here",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                 GetBuilder<TopTrendController>(
                   builder: (context) {
                     return toptrendController.commentController.text!=""?GestureDetector(
                       onTap: (){
                         var newComment=SingleComment(userName: "Syed Abdullah",userComment:toptrendController.commentController.text);
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