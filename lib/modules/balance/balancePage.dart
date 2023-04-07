import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../global_widgets/Text.dart';
import '../../global_widgets/customAppBAr.dart';
import '../../global_widgets/custom_details.dart';
import '../../global_widgets/custom_elevated_button.dart';
import '../income_expenses/expenses.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10.h,
            ),
            const details(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Balance",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Rs.567,57",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                customElevatedButton(icon: Icons.add),
                customElevatedButton(icon: Icons.search),
                customElevatedButton(
                  icon: Icons.leaderboard_sharp,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.sp),
                              color: Colors.black26),
                          padding: EdgeInsets.symmetric(
                              vertical: 2.sp, horizontal: 8.sp),
                          child: Text("CARD",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      const customText(
                        "3567 55437 9080 5600",
                        weight: FontWeight.bold,
                        size: 22,
                      ),
                      const customText(
                        "Card number",
                        weight: FontWeight.w400,
                        size: 18,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          customText(
                            "Name",
                            size: 18,
                            weight: FontWeight.bold,
                          ),
                          customText(
                            "95/20",
                            size: 18,
                            weight: FontWeight.bold,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          customText(
                            "skcjb",
                            size: 16,
                          ),
                          customText("ssss", size: 16)
                        ],
                      )
                    ]),
              ),
            ),
            ListTile(
              title: Text("My cards",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            Divider(thickness: 2.h),
            ListTile(
              title: Text("Transactions",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            Divider(thickness: 2.h),
          ]),
        ),
      ),
    );
  }
}
