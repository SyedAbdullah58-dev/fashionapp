import 'package:fashionapp/views/login/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginSignupController extends GetxController{
  /*For sign up screen*/
  TextEditingController fullName=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  TextEditingController mobileNumber=new TextEditingController();
  bool createAccount=false;
  /*For Login Screen*/
  TextEditingController loginEmail=new TextEditingController();
  TextEditingController loginPassword=new TextEditingController();

  /*General*/
bool isLoggedIn = false;
}