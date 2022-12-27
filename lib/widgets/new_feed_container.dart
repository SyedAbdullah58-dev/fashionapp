import 'package:fashionapp/widgets/custom_function_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

Widget NewFeedContainer({image,height,width,radius}){
  return Padding(
    padding:EdgeInsets.symmetric(horizontal: 5.w),
    child:
        Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20.r)
          ),
        ),


    );

}