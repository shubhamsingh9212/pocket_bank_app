import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class details extends StatelessWidget {
  const details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 42.sp,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            radius: 37.sp,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person_rounded,size: 55.sp,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NAME",
                style: TextStyle(fontSize: 18.sp,
                    fontWeight: FontWeight.bold, color: Colors.indigo)),
            Row(
              children: [
                Text(
                  "COUNTRY NAME",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 18.sp),
                ),
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.green,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
