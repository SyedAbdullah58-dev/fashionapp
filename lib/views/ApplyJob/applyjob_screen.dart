import 'package:fashionapp/constants.dart';
import 'package:fashionapp/controllers/job_apply_controller.dart';
import 'package:fashionapp/home/Inbox_screen.dart';
import 'package:fashionapp/widgets/custom_button.dart';
import 'package:fashionapp/widgets/new_feed_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slidable_button/slidable_button.dart';

class ApplyJobScreen extends StatelessWidget {
  JobApplyController jobApplyController = Get.put(JobApplyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 300.h,
                        width: 329.w,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 190.h,
                                  width: 329.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          image: AssetImage(""),
                                          fit: BoxFit.fill),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                ),
                                Positioned(
                                    left: 10.w,
                                    top: 10.h,
                                    child: BackButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          Get.back();
                                        })),
                                Positioned(
                                  bottom: -20.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 100.h,
                                        width: 100.h,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 80.h),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/zain.png"),
                                  radius: 40.r,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Film Actor",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Syed Abdullah",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.white60,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  /*Container(
                    height: 36.h,
                    width: 189.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
borderRadius: BorderRadius.circular(8.r)

                    ),
                  ),*/
                  GetBuilder<JobApplyController>(builder: (context) {
                    return HorizontalSlidableButton(
                      borderRadius: BorderRadius.circular(10.r),
                      width: 190.w,
                      buttonWidth: 98.w,
                      color: Color(0xffD8D8D8),
                      buttonColor: Colors.white,
                      dismissible: false,
                      label: Center(
                        child: Text(
                          jobApplyController.sliderButtonText,
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp, color: Colors.black),
                        ),
                      ),
                      onChanged: (SlidableButtonPosition value) {
                        if (value.toString().contains("start")) {
                          jobApplyController.sliderButtonText = Description;
                          jobApplyController.update();
                        } else {
                          jobApplyController.sliderButtonText = Overview;
                          jobApplyController.update();
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Description,
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp, color: Color(0xff615F5F))),
                            Text(Overview,
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp, color: Color(0xff615F5F))),
                          ],
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      children: [
                        GetBuilder<JobApplyController>(builder: (context) {
                          return Text(
                            jobApplyController.sliderButtonText,
                            style: textStyle,
                          );
                        })
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 152.h,
                    width: 329.w,
                    child: Text(OverContent,
                        style: GoogleFonts.poppins(
                            fontSize: 11.sp,
                            color: Color(0xffD8D8D8B0),
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none)),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      children: [
                        GetBuilder<JobApplyController>(builder: (context) {
                          return Text(
                            jobApplyController.sliderButtonText,
                            style: textStyle,
                          );
                        })
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 152.h,
                    width: 329.w,
                    child: Text(
                      OverContent,
                      style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          color: Color(0xffD8D8D8B0),
                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          text: "Apply Now", height: 56.h, width: 265.w, function: (){
                            if(!jobApplyController.JobApplied){
                              jobApplyController.JobApplied=true;
                              jobApplyController.update();

                            }
                      }),
                      SizedBox(
                        width: 5.w,
                      ),
                      GestureDetector(
                        onTap: () {
Get.to(InboxScreen());
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                gradient: LinearGradient(
                                    colors: gradientColor,
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 16.r,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
              GetBuilder<JobApplyController>(
                builder: (context) {
                  return jobApplyController.JobApplied?Container(
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
    );
  }
}
