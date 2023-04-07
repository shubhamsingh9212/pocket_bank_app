import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ReusableTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLine;
  final TextInputType keyboardType;
  final bool obscureText;
  final String errorText;
  final Function(String) onChanged;

  const ReusableTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.maxLine = 1,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.errorText = "", required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      validator: (val){
      if(val?.isEmpty ?? true){
        return "Required";

      }  else{return null;}
      },
      maxLines: maxLine,
      cursorColor: AppColors.white,
      keyboardType: keyboardType,
      onChanged: (val){
        onChanged(val);
      },
      style: const TextStyle(color: AppColors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          errorStyle: const TextStyle(color: AppColors.red),
          errorText: errorText.isEmpty ? null : errorText,
          hintStyle: TextStyle(
              color: errorText.isNotEmpty ? AppColors.red : AppColors.white),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          )),
    );
  }
}
