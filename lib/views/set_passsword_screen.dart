import 'package:fashionapp/views/success_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/constants.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';


import '../../widgets/custom_button.dart';
import '../widgets/custom_textform_field.dart';

class SetPasswordScreen extends StatelessWidget {


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
          SizedBox(height: 45.h,),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Row(
              children: [
                Text(
                  "NEW \nPASSWORD",
                  style: GoogleFonts.poppins(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      wordSpacing: 1.sp,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
SizedBox(height: 20.h,),

          CustomTextFormField(hinttext: "Enter new Password"),
          SizedBox(height: 30.h,),
          CustomTextFormField(hinttext: "Confirm Password",obscureText: true),
          SizedBox(height: 80.h,),
          CustomButton(    height: 59.h,
              width: 344.w,text:"Continue",function: (){Get.to(SuccessPassword());}),

        ],
      ),
    );
  }
}
