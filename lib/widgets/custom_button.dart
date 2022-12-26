import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';



Widget CustomButton({height, width, text, function}){
    return InkWell(
      onTap: function,
      child: Container(
          alignment: Alignment.center,
          height: 51.h,
          width: 289.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              gradient: LinearGradient(
                  colors: gradientColor,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }

