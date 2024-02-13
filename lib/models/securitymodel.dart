// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String name;
  String empid;
  String address;
  String phoneno;
  String email;
  String password;

  Posts({
    required this.name,
    required this.empid,
    required this.address,
    required this.phoneno,
    required this.email,
    required this.password,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    name: json["name"],
    empid: json["empid"],
    address: json["address"],
    phoneno: json["phoneno"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "empid": empid,
    "address": address,
    "phoneno": phoneno,
    "email": email,
    "password": password,
  };
}
