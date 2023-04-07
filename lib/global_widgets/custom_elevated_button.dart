import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customElevatedButton extends StatelessWidget {
  final IconData icon;
  final num size;
  const customElevatedButton({Key? key, required this.icon,  this.size = 35}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey, width: 2.sp)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(icon, color: Colors.indigo, size: size.sp),
      ),
    );
  }
}
