

import 'package:fashionapp/views/login/onboarding_screen.dart';
import 'package:get/get.dart';



class BottomNavigationPageController extends GetxController {

  static BottomNavigationPageController get to => Get.find();
final currentIndex = 0.obs;

  List pages = [

OnboardingScreen()
  ];

   get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    currentIndex.value = _index;
    if(_index==2){


    }
  }
}
