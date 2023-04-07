import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customText extends
StatelessWidget {
  final String title;
  final weight;
  final num size;

  const customText(this.title, {Key? key, this.weight, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
    title,
    style: TextStyle(
  color: Colors.white,
  fontWeight: weight,
  fontSize: size.sp),
  );
  }
}
