import 'package:fashionapp/controllers/job_apply_controller.dart';
import 'package:fashionapp/controllers/settings_controller.dart';
import 'package:fashionapp/widgets/custom_button.dart';
import 'package:fashionapp/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class PostJobScreen extends StatelessWidget {
  SettingController settingController=Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25.r,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 237.w,
                      height: 35.h,
                      child: Text(
                        "Post a Job",
                        style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
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
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Job Title",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Job Description",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Container(
                            height: 149.h,
                            decoration: BoxDecoration(
                                color: Color(0xff282828),
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                  width: 1.w,
                                )),
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
//helperText: hinttext,
                                  focusColor: Colors.black,

                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.purple, width: 2.0),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 16.h,
                                    horizontal: 20.w,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.grey,
                                  ),

                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Job Type",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Country*",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "City*",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "jobs Available",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "sub-jobs available",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Time",
                                style: textStyle,
                              ),
                            ],
                          ),
                        ),
                        CustomTextFormField(),
SizedBox(height: 20.h,),
                        CustomButton(text: "Post a Job",
                            function: (){
                          if(!settingController.jobPosted){
                          settingController.jobPosted=true;
                          settingController.update();
                          print(settingController.jobPosted);
                        }})
                      ],
                    ),
                    GetBuilder<SettingController>(
                        builder: (context) {
                          return settingController.jobPosted?Container(
                            height: 159.h,
                            width: 176.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                gradient: LinearGradient(colors: gradientColor,begin: Alignment.topCenter,end: Alignment.bottomCenter)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(Icons.check,color: Colors.white,size: 30.r,),
                                SizedBox(height: 10.h,),
                                Text(
                                  "Successful",style: textStyle,
                                )
                              ],),
                          ):Container();
                        }
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
