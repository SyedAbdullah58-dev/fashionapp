import 'dart:convert';

import 'package:fashionapp/model/UserDetails.dart';
import 'package:fashionapp/model/login_model.dart';
import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/views/login/Login_screen.dart';
import 'package:fashionapp/views/login/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginSignupController extends GetxController {
  /*For sign up screen*/
  TextEditingController full_name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController mobile_number = new TextEditingController();
  bool createAccount = false;

  /*For Login Screen*/
  TextEditingController loginEmail = new TextEditingController();
  TextEditingController loginPassword = new TextEditingController();

  /*General*/
  bool isLoggedIn = false;

/*URls*/
  String signupUrl = baseUrl + "auth/createuser";
  String loginUrl = baseUrl + "auth/login";

/*Functions*/

  Future<bool> CreateUser() async {
    // var headers={'Content-Type':'application/json'};
    UserDetails userDetails = new UserDetails(
        full_name: full_name.text,
        mobile_number: mobile_number.text,
        email: email.text,
        password: password.text,
        status: "public");
    try {
      var body = jsonEncode(userDetails.toJson());
      http.Response response = await http.post(
        Uri.parse(signupUrl),
        body: body,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {
        full_name.clear();
        email.clear();
        password.clear();
        mobile_number.clear();
        Get.to(LoginScreen());
        Get.snackbar("Signup Successful","Signup Successful",backgroundColor: Colors.white60,colorText: Colors.black);
        return true;
      } else {
        Get.snackbar("Signup Failed","Try again to signup",backgroundColor: Colors.white60,colorText: Colors.black);
        return false;
      }
    } catch (e) {
    return false;

    }
  }
  Future<bool> LoginUser() async {
    // var headers={'Content-Type':'application/json'};
   LoginModel loginModel=new LoginModel(email: loginEmail.text, password: loginPassword.text);
    try {
      var body = jsonEncode(loginModel.toJson());
      http.Response response = await http.post(
        Uri.parse(signupUrl),
        body: body,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {
        full_name.clear();
        email.clear();
        password.clear();
        mobile_number.clear();
        Get.to(LoginScreen());
        Get.snackbar("Signup Successful","Signup Successful",backgroundColor: Colors.white60,colorText: Colors.black);
        return true;
      } else {
        Get.snackbar("Signup Failed","Try again to signup",backgroundColor: Colors.white60,colorText: Colors.black);
        return false;
      }
    } catch (e) {
      return false;

    }
  }
}
