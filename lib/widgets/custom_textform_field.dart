import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomTextFormField({
  text = '',
  controller,
errorText,
  keyboardType = TextInputType.text,
  obscureText = false,
  hinttext=""
}) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.w),
    child: Container(
      height: 60.h,

      decoration: BoxDecoration(

          color: Color(0xff282828),
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            width: 1.w,
          )),
      child: Center(
        child: TextFormField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          controller: controller,

          style: TextStyle(
            fontSize: 18.sp,
             color: Colors.white,
          ),
          decoration: InputDecoration(
//helperText: hinttext,
          errorText: errorText,
            focusColor: Colors.black,

            focusedBorder:OutlineInputBorder(

          borderSide: const BorderSide(color: Colors.purple, width: 2.0),
          borderRadius: BorderRadius.circular(20.r),
        ) ,
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 20.w,
            ),
            hintStyle: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey,
            ),
            hintText: hinttext,
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
