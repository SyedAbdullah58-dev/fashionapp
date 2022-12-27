import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/controllers/settings_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTypeScreen extends StatelessWidget {
  SettingController settingController=Get.put(SettingController());

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
                        "Project Type",
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
                    for (int i = 0; i < settingController.categoryList.length; i++)
                      GetBuilder<SettingController>(
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 20.w),
                            child: Row(
                              children: [
                                SizedBox(width: 7.w,),
                                Text(settingController.categoryList[i].item,style: textStyle,),
                                Expanded(child: Container()),
                               !settingController.categoryList[i].isSelected? GestureDetector(
                                 onTap: (){
                                   if(!settingController.categoryList[i].isSelected){
                                     settingController.categoryList[i].isSelected=true;
                                     settingController.update();
                                   }
                                   else
                                     {settingController.categoryList[i].isSelected=false;
                                     settingController.update();}
                                 },
                                 child: Container(
                                   alignment: Alignment.center,
                                   height: 20.h,
                                   width: 20.w,
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white
                                   ),
                                   child: Container(   height: 15.h,
    width: 15.w,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.black)),

                                 ),
                               ): Container(
                                 alignment: Alignment.center,
                                 height: 20.h,
                                 width: 20.w,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,

                                   gradient: LinearGradient(colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter)
                                 ),
                                 child: Icon(Icons.done,size: 15.r,color: Colors.white,),

                               )
                              ],),

                          );
                        }
                      ),

                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
