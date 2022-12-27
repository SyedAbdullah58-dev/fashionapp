import 'package:fashionapp/views/login/signup_screen.dart';

import 'package:fashionapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 20.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40.r,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 92.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 174.h,
                width: 174.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/logo.png"))),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 289.h,
                width: 237.w,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.r)),
                child: SingleChildScrollView(
                  child: Column(children: [
                    for(int i=0;i<10;i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 10.w),
                      child: Row(

                        children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/pak.png"),
                          radius: 15.r,
                        ),
                        SizedBox(width: 7.w,),
                        Text("Urdu",style: textStyle,),
Expanded(child: Container()),
Theme(
  
  data: ThemeData(


  ),
  child:   Radio(
    fillColor:
    MaterialStateColor.resolveWith((states) => Colors.white,),
  focusColor: Colors.white,

      value: 1, groupValue: 0, onChanged: (value){}),
)
                      ],),

                    )
                  ],),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              CustomButton(    height: 51.h,
                width: 289.w,text:"Continue With Login",function: (){
                Get.to(SignUpScreen());
                
                  }),
              SizedBox(height: 20.h,),
              CustomButton(    height: 51.h,
                width: 289.w,text:"Continue Without Login",),


            ],
          )
        ]));
  }
}
