import 'package:fashionapp/controllers/celeb_profile_controller.dart';
import 'package:fashionapp/widgets/new_feed_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../widgets/profile_container.dart';

class CelebProfile extends StatelessWidget {
  CelebProfileController celebProfileController =
      Get.put(CelebProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h,left: 10.w),
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.white,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image2.png"),
                      radius: 30.r,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Feroz Khan",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                        Text(
                          "Pakistani Actor",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/luxstyle.png"),
                          radius: 20.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Lux Style",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/nigaraward.png"),
                          radius: 20.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Nigara Award",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/bestactor.png"),
                          radius: 20.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Best Actor",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/aryaward.png"),
                          radius: 20.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Ary Award",
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Row(
                  children: [
                    Container(
                      height: 34.h,
                      width: 110.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Color(0xff282828)),
                          color: Colors.black),
                      child:
                          GetBuilder<CelebProfileController>(builder: (context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
if(!celebProfileController.isFollowed){
  celebProfileController.isFollowed=true;
  celebProfileController.update();
}
else
  {celebProfileController.isFollowed=false;
celebProfileController.update();}

                                },
                                child: !celebProfileController.isFollowed  ? ImageIcon(
                                  AssetImage("assets/heart.png"),
                                  color: Color(0xffEA2E05),
                                  size: 30.r,
                                ):ImageIcon(
                            AssetImage("assets/filledheart.png"),
                            color: Color(0xffEA2E05),
                            size: 30.r,
                            )),
                            SizedBox(
                              width: 5.w,
                            ),
                            !celebProfileController.isFollowed?Text(
                              follow,
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.white60,
                                  wordSpacing: 1.sp,
                                  decoration: TextDecoration.none),
                            ):Text(
                              followed,
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.white60,
                                  wordSpacing: 1.sp,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        );
                      }),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 34.h,
                      width: 181.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Color(0xff282828)),
                          color: Colors.black),
                      child:
                          GetBuilder<CelebProfileController>(builder: (context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            GestureDetector(
                                onTap: () {


                                },
                                child: ImageIcon(
                                  AssetImage("assets/youtube.png"),
                                  color: Color(0xffEA2E05),
                                  size: 30.r,
                                )),
                            SizedBox(
                              width: 10.w,
                            ),

                            GestureDetector(
                                onTap: () {


                                },
                                child: Icon(Icons.tiktok,   color: Color(0xffEA2E05),
                                  size: 30.r,)

                                ),
                            SizedBox(
                              width: 10.w,
                            ),
                            GestureDetector(
                                onTap: () {


                                },
                                child: ImageIcon(
                                  AssetImage("assets/insta.png"),
                                  color: Color(0xffEA2E05),
                                  size: 30.r,
                                )),
                            SizedBox(
                              width: 10.w,
                            ),
                            GestureDetector(
                                onTap:(){},
                                child: Icon(Icons.more_vert,color: Color(0xffEA2E05),size: 30.r,))
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.r),
                child: Container(
                  height: 60.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "14",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Oscar Won",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: dullTextColor,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      VerticalDivider(width: 5.w,color: dullTextColor,thickness: 1,),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "12",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Total Awards",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: dullTextColor,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      VerticalDivider(width: 5.w,color: dullTextColor,thickness: 1,),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "81",
                            style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Nominations",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: dullTextColor,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 15.w,
                      ),
                    ],
                  ),
                ),
              ),

              Divider(color: dullTextColor,),
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(Overview,
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, color: Colors.white,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
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
              Padding(
                padding: EdgeInsets.all(15.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Portfolio",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, color: Colors.white,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              for(int i=0;i<3; i++)
              Padding(
                padding:  EdgeInsets.all(10.r),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   NewFeedContainer(image: "assets/profile1.png",height: 79.h,width: 95.w),
                   NewFeedContainer(image: "assets/profile1.png",height: 79.h,width: 95.w),
                   NewFeedContainer(image: "assets/profile1.png",height: 79.h,width: 95.w),

                  ],
                ),
              ),
              
              

            ],
          ),
        ),
      ),
    );
  }
}
