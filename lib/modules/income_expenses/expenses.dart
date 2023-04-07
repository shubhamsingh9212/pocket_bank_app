import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../global_widgets/customAppBAr.dart';
import '../../global_widgets/custom_details.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';

class Expenses extends StatelessWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(children: [
          SizedBox(
            height: 10.h,
          ),
          const details(),
          SizedBox(
            height: 60.h,
          ),
          progressWidget(),
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10.sp,
                ),
                Text(
                  "  INCOMES",
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  width: 65.w,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10.sp,
                ),
                Text(
                  "  EXPENSES",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Row(
              children: [
                Text(
                  "309",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 40.sp),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "234",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 40.sp),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget progressWidget() {
    return Stack(
      children: [
        CircularPercentIndicator(
          radius: 110.0,
          animation: true,
          animationDuration: 1200,
          lineWidth: 5.0,
          percent: 0.8,
          center: CircularPercentIndicator(
            radius: 80.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 5.0,
            percent: 0.4,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Balance",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(height: 15),
                Text(
                  "Rs. 567,57",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: AppColors.grey,
            progressColor: AppColors.bluePrimary,
          ),
          circularStrokeCap: CircularStrokeCap.butt,
          backgroundColor: AppColors.grey,
          progressColor: AppColors.bluePrimary,
        ),
        Positioned(
            right: 0,
            bottom: 88.h,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,color: Colors.white,border: Border.all(color: AppColors.grey,width: 3.w)
              ),
              child: Image.asset(Images.stocks, color: AppColors.bluePrimary,height: 120.h,width: 60.w),
            ))
      ],
    );
  }
}
