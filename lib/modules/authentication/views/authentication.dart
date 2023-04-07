
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../global_widgets/reusable_text_field.dart';
import '../../../utils/app_colors.dart';
import '../controller/authentication_controller.dart';

class Authentication extends GetView<AuthenticationController> {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluePrimary,
      body: Obx(
        () => controller.loading.value
            ? const Center(child: CircularProgressIndicator(backgroundColor: AppColors.white,))
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70.h,
                      ),
                      Text("Welcome, to signin continue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 40.sp)),
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10.sp)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 15.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.setSignup(false);
                                },
                                child: Text("Login",
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: controller.signup.value
                                            ? AppColors.greyDefault
                                            : AppColors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.setSignup(true);
                                },
                                child: Text("SignUp",
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: controller.signup.value
                                            ? AppColors.white
                                            : AppColors.greyDefault,
                                        fontWeight: FontWeight.bold)),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ReusableTextField(
                        controller: controller.emailController,
                        hintText: "Enter email",
                        errorText: controller.emailErrorText.value,
                        onChanged: (val){
                          controller.isEmailValid();
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ReusableTextField(
                        controller: controller.passwordController,
                        hintText: "Enter password",
                        obscureText: true,
                        errorText: controller.passwordErrorText.value,
                        onChanged: (val){
                          controller.isPasswordValid();
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {
                              controller.signup.value
                                  ? controller.signUp()
                                  : controller.login();
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Text(
                                controller.signup.value ? "Sign up" : "Login",
                                style: TextStyle(
                                    color: AppColors.bluePrimary,
                                    fontSize: 30.sp),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget your password ?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            )),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
