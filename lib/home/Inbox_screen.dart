import 'package:fashionapp/views/settings/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

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
                    child:   GestureDetector(
                      onTap: (){Get.to(ProfileScreen());},
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/zain.png"),
                        radius: 20.r,
                      ),
                    ),
                  );
                }),
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
                        "Inbox",
                        style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.sp,
                            decoration: TextDecoration.none),
                      ),
                    ),
                    Text(
                      "5 new messages",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.sp,
                          decoration: TextDecoration.none),
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
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
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
                  hintText: "Search by name",
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
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/zain.png"),
                              radius: 30.r,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Syed Abdullah",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Hey, See you tomorrow in event",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: 58.w,
                              child: Text(
                                "25 min ago",
                                style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
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
