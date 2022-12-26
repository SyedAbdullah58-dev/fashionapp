import 'package:fashionapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h,left: 10.w),
            child: Row(

              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () {
                    print("On this Screen");
                    Get.back();
                  },
                ),

                SizedBox(
                  width: 20.w,
                ),

              ],
            ),
          ),
          Container(
height: 50.h,
            width: 344.w,
           decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.circular(20.r)),
            child: DropdownButtonFormField

              (

              hint: Text("Acting"),
              items: [
              DropdownMenuItem(child: Text("Acting and Fasion",style: textStyle,))

            ], onChanged: (value) {
              print(value);

            },),
          )
        ],
      ),
    ));
  }
}
