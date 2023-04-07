import 'package:flutter/cupertino.dart';

class Constants{
  static const signupUrl = "https://reqres.in/api/register";
  static const loginUrl = "https://reqres.in/api/login";
  static const token = "token";
}

class GlobalKeys {
  GlobalKeys._privateConstructor();
  static final navigationKey = GlobalKey<NavigatorState>();
}