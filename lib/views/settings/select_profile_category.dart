import 'package:fashionapp/controllers/celeb_profile_controller.dart';
import 'package:fashionapp/views/settings/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class SelectProfileCategory extends StatelessWidget {
 CelebProfileController celebProfileController=Get.put(CelebProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               BackButton(onPressed: (){Get.back();},color: Colors.white,),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 150.w,
                      height: 35.h,
                      child: Text(
                        "Category",
                        style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Text(
                      "What best describes you",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.done,
                  size: 30.r,
                  color: Color(0xff0096FF),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: Container(
              alignment: Alignment.center,
              height: 50.h,
              width: 329.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                    width: 1.w,
                  )),
              child: TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.black,

                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 20.w,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < celebProfileController.categoryList.length; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 20.w),
                        child: Row(

                          children: [

                            SizedBox(width: 7.w,),
                            Text(celebProfileController.categoryList[i],style: textStyle,),
                            Expanded(child: Container()),
                            Theme(

                              data: ThemeData(


                              ),
                              child:   Radio(
                                  fillColor:
                                  MaterialStateColor.resolveWith((states) => Colors.white,),
                                  focusColor: Colors.white,

                                  value: 1, groupValue: 0, onChanged: (value){}),
                            )
                          ],),

                      ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap:(){

                            },
                            child: Container(
                                height: 25.h,
                                alignment: Alignment.center,
                                width: 83.w,
                                decoration: BoxDecoration(
                                    gradient:
                                    LinearGradient(colors: gradientColor),
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Text(
                                  "Other",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
