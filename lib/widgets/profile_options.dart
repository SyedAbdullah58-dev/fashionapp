import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget ProfileOptions({optIcon,optTitle,onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
        height: 71.h,
        width: 329.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12.r)),
        child: Padding(
          padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: Color(0xff171717),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: optIcon
              ),
              SizedBox(
                width: 10.w,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   optTitle,
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15.r,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
