import 'package:fashionapp/home/Inbox_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/settings_controller.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

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
                  BackButton(
                    onPressed: () {

                        Get.back();

                    },
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),

                  Container(
                    alignment: Alignment.center,
                    width: 237.w,
                    height: 35.h,
                    child: Text(
                      "Follow",
                      style: GoogleFonts.poppins(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Expanded(child: Container()),

                   GestureDetector(
                    onTap: () {
                   Get.to(()=>InboxScreen());
                      }
                    ,
                    child: Icon(
                      Icons.chat_bubble_sharp,
                      size: 30.r,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ,
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/feroz.png"),
                              radius: 40.r,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Feroz Khan",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "11.5k followers",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ],
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
