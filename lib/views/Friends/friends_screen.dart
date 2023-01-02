import 'package:fashionapp/controllers/settings_controller.dart';
import 'package:fashionapp/views/settings/profile_setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsScreen extends StatelessWidget {
  SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          GetBuilder<SettingController>(builder: (context) {
            return Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BackButton(
                    onPressed: () {
                      if (!settingController.searchFriends) {
                        Get.back();}
                      else
                        {
                          settingController.searchFriends=false;
                          settingController.update();
                        }
                    },
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  settingController.searchFriends
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 2.h),
                          child: Container(
                            alignment: Alignment.center,
                            height: 41.h,
                            width: 282.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(
                                  width: 1.w,
                                )),
                            child: TextFormField(
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
                                hintText: "Search by title",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: 237.w,
                          height: 35.h,
                          child: Text(
                            "Friends",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1.sp,
                                decoration: TextDecoration.none),
                          ),
                        ),
                  Expanded(child: Container()),
                  settingController.searchFriends
                      ? Container()
                      : GestureDetector(
                          onTap: () {
                            if (!settingController.searchFriends) {
                              settingController.searchFriends = true;
                              settingController.update();
                            } else {
                              settingController.searchFriends = false;
                              settingController.update();
                            }
                          },
                          child: Icon(
                            Icons.search,
                            size: 30.r,
                            color: Colors.white,
                          ),
                        ),
                ],
              ),
            );
          }),
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
