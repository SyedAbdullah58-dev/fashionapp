import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/home/home_screen.dart';
import 'package:fashionapp/views/login/login_screen.dart';
import 'package:fashionapp/views/settings/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class NavbarScreen extends StatelessWidget {
  BottomNavigationPageController bottomNavigationPageController =
      Get.put(BottomNavigationPageController());

  // final Map<String, dynamic> data;
  // MainPage( this.data);

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ProfileScreen(),
      // FavouritesScreen(),
    ];

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.black,
        body: pages[BottomNavigationPageController.to.currentIndex.value],
        // body: BottomNavigationPageController.to.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          
          unselectedItemColor: Colors.white,
          currentIndex: BottomNavigationPageController.to.currentIndex.value,
          onTap: BottomNavigationPageController.to.changePage,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cases_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  height: 39.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: gradientColor),
                      borderRadius: BorderRadius.circular(20.r)),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wechat_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
