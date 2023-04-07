import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../../utils/constants.dart';
import '../models/request/signup_request.dart';
import '../models/response/signup_response.dart';

class AuthenticationRepository {

  Future<SignupResponse?> signUp(AuthenticationRequest request) async {
    final response = await http.post(Uri.parse(Constants.signupUrl),
        body: request.toJson());
    debugPrint("response : ${response.body}");
    if (response.statusCode == 200) {
      return SignupResponse.fromJson(jsonDecode(response.body));
    } else {
      Fluttertoast.showToast(msg: jsonDecode(response.body)["error"]);
      return null;
    }
  }

  Future<SignupResponse?> login(AuthenticationRequest request) async {
    final response = await http.post(Uri.parse(Constants.loginUrl),
        body: request.toJson());
    debugPrint("response : ${response.body}");
    if (response.statusCode == 200) {
      return SignupResponse.fromJson(jsonDecode(response.body));
    } else {
      Fluttertoast.showToast(msg: jsonDecode(response.body)["error"]);
      return null;
    }
  }

}
