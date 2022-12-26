

import 'package:fashionapp/views/ApplyJob/filter_screen.dart';
import 'package:fashionapp/views/ApplyJob/links_screen.dart';
import 'package:fashionapp/views/celebrity/select_celebrity_screen.dart';
import 'package:fashionapp/views/settings/post_job_screen.dart';
import 'package:fashionapp/views/settings/profile_screen.dart';
import 'package:fashionapp/views/settings/select_profile_category.dart';
import 'package:fashionapp/views/splashscreens/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(390,844),

        builder: (context,child){
      return
        GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          ),
          home:  PostJobScreen()// SplashScreen()//FilterScreen()//ApplyJobScreen()
        );


    });
  }
}

