import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';



Widget CustomButton({height, width, text, function,radius}){
    return InkWell(
      onTap: function,
      child: Container(
          alignment: Alignment.center,
          height: 51.h,
          width: 289.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius==null?10.r:radius),
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

