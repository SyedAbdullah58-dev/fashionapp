// To parse this JSON data, do
//
//     final resetPassword = resetPasswordFromJson(jsonString);

import 'dart:convert';

ResetPassword resetPasswordFromJson(String str) => ResetPassword.fromJson(json.decode(str));

String resetPasswordToJson(ResetPassword data) => json.encode(data.toJson());

class ResetPassword {
  ResetPassword({
    required this.userid,
    required this.oldpassword,
    required this.newpassword,
  });

  String userid;
  String oldpassword;
  String newpassword;

  factory ResetPassword.fromJson(Map<String, dynamic> json) => ResetPassword(
    userid: json["userid"],
    oldpassword: json["oldpassword"],
    newpassword: json["newpassword"],
  );

  Map<String, dynamic> toJson() => {
    "userid": userid,
    "oldpassword": oldpassword,
    "newpassword": newpassword,
  };
}
