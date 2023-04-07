import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/request/signup_request.dart';
import '../../../data/repository/authentication_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';

class AuthenticationController extends GetxController {
  late AuthenticationRepository authenticationRepository;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool loading = false.obs;
  RxBool signup = true.obs;
  RxString emailErrorText = "".obs;
  RxString passwordErrorText = "".obs;
  late SharedPreferences prefs;

  @override
  void onInit() async {
    super.onInit();
    authenticationRepository = AuthenticationRepository();
    prefs = await SharedPreferences.getInstance();
  }

  void setSignup(bool val) {
    signup.value = val;
  }

  void signUp() async {
    bool emailValid = isEmailValid();
    bool passwordValid = isPasswordValid();
    if (emailValid && passwordValid) {
      emailErrorText.value = "";
      passwordErrorText.value = "";
      loading.value = true;
      final response = await authenticationRepository.signUp(
          AuthenticationRequest(
              email: emailController.text.trim(),
              password: passwordController.text.trim()));
      if (response != null) {
        await prefs.setString(Constants.token, response.token!);
        Get.offNamed(Routes.home);
      }
      loading.value = false;
    }
  }

  void login() async {
    bool emailValid = isEmailValid();
    bool passwordValid = isPasswordValid();
    if (emailValid && passwordValid) {
      emailErrorText.value = "";
      passwordErrorText.value = "";
      loading.value = true;
      final response = await authenticationRepository.login(
          AuthenticationRequest(
              email: emailController.text.trim(),
              password: passwordController.text.trim()));
      if (response != null) {
        await prefs.setString(Constants.token, response.token!);
        Get.offNamed(Routes.home);
      }
      loading.value = false;
    }
  }

  bool isEmailValid() {
    if (emailController.text.isEmpty) {
      emailErrorText.value = "Please enter email";
      return false;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text.trim())) {
      emailErrorText.value = "Please enter valid email";
      return false;
    }
    else{
      emailErrorText.value = "";
    }
    return true;
  }

  bool isPasswordValid() {
    if (passwordController.text.isEmpty) {
      passwordErrorText.value = "Please enter password";
      return false;
    }
    else{
      passwordErrorText.value = "";
    }
    return true;
  }
}
