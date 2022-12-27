import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/controllers/job_apply_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryScreen extends StatelessWidget {

JobApplyController jobApplyController=Get.put(JobApplyController());
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
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 29.r,
                      color: Colors.white,
                    ),
                  );
                }),
                SizedBox(
                  width: 20.w,
                ),
                GetBuilder<JobApplyController>(
                  builder: (context) {
                    return jobApplyController.showSearchBar==false?Container(
                      alignment: Alignment.center,
                      width: 237.w,
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
                    ):
                    Container(
                      width: 237.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: TextField(
                        style: TextStyle(fontSize: 14.sp,),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            prefixIcon: Icon(
                              Icons.search,
                              size: 15.r,
                            )),
                      ),
                    );
                  }
                ),
                Expanded(child: Container())
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Text("New Hiring",style: GoogleFonts.poppins(
                 fontSize: 18.sp,
                 fontWeight: FontWeight.bold,
                 color:Colors.white,
                 decoration: TextDecoration.none),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            GestureDetector(
                onTap:(){if(!jobApplyController.showSearchBar){
                  jobApplyController.showSearchBar=true;
                  jobApplyController.update();
                }
                },
                child: Icon(Icons.search,size: 29.r,color: Colors.white,)),
                Expanded(child: Container()),
                GestureDetector(child: Container(
                    height: 41.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: ImageIcon(AssetImage("assets/filter.png"),size: 29.r,color: Colors.deepPurple,))),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for(int i=0;i<10;i++)
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: Row(

                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/zain.png"),
                              radius: 40.r,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Drama Actor",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Nerdware Hub (Full Time) \n Islamabad Pakistan",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                          Icon(Icons.arrow_forward_ios,color:Color(0xff888787),size: 25.r,)
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