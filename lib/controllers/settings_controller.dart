import 'package:fashionapp/utils/category_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{
  bool privateAccount=false;
  bool darkMood=false;
  bool jobPosted=false;
  bool rememberMe=false;
  List<CategoryList> categoryList=[
    CategoryList(item: "Drama",isSelected: false),
    CategoryList(item: "Film",isSelected: false),
    CategoryList(item: "Song",isSelected: false),
    CategoryList(item: "Show",isSelected: false),
  ];
  bool searchFriends=false;
  TextEditingController jobTitle=TextEditingController();

}