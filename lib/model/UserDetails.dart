// To parse this JSON data, do
//
//     final userDetails = userDetailsFromJson(jsonString);

import 'dart:convert';

UserDetails userDetailsFromJson(String str) => UserDetails.fromJson(json.decode(str));

String userDetailsToJson(UserDetails data) => json.encode(data.toJson());

class UserDetails {
  UserDetails({
    required this.full_name,
    required this.mobile_number,
    required this.email,
    required this.password,
    required this.status,
  });

  String full_name;
  String mobile_number;
  String email;
  String password;
  String status;

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    full_name: json["full_name"],
    mobile_number: json["Mobile_number"],
    email: json["Email"],
    password: json["Password"],
    status: json["Status"],
  );

  Map<String, dynamic> toJson() => {
    "full_name": full_name,
    "mobile_number": mobile_number,
    "email": email,
    "password": password,
    "status": status,
  };
}
