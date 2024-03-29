import 'package:fashionapp/home/navbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/constants.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';


import '../../widgets/custom_button.dart';
import '../widgets/custom_textform_field.dart';

class SuccessPassword extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 46.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 215.h,
                width: 215.h,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Saly-10.png"))),
              ),
            ],
          ),
          SizedBox(height: 100.h,),


      Text(
        "Login Successful!",
        style: GoogleFonts.poppins(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            wordSpacing: 1.sp,
            decoration: TextDecoration.none),
      ),
      SizedBox(height: 10.h,),
      Text(
        "Enjoy Your Time",
        style: GoogleFonts.poppins(
            fontSize: 14.sp,

            color: Colors.white,
            wordSpacing: 1.sp,
            decoration: TextDecoration.none),
      ),


          SizedBox(height: 250.h,),


          CustomButton(    height: 59.h,
              width: 344.w,text:"Continue",function: (){Get.to(NavbarScreen());}),

        ],
      ),
    );
  }
}
