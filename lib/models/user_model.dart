import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  final String fname;
  final String lname;
  final String gmail;
  final String password;

  UserModel({
    required this.fname,
    required this.lname,
    required this.gmail,
    required this.password,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        fname: map['fname'] ?? '',
        lname: map['lname'] ?? '',
        gmail: map['gmail'] ?? '',
        password: map['password'] ?? '',
        );
  }

  Map<String, dynamic> toMap() {
    return {
      "fname": fname,
      "lname": lname,
      "gmail": gmail,
      "password": password,
    };
  }
}
