

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/single_comment.dart';

class TopTrendController extends GetxController {
  List<String> urlList = [
    "assets/img.png",
    "assets/trend2.png",
    "assets/trend3.png",
  ];
  int index = 0;
  TextEditingController commentController = TextEditingController();
  TextEditingController picCaption = TextEditingController();
  bool sharePost=false;
  List<Widget> commentList = [
    SingleComment(userName: "Anna Marie", userComment: "I love this"),
    SingleComment(userName: "Anna Marie", userComment: "nice pic"),
  ];
var picker;

}
