
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pocket_bank/routes/app_pages.dart';
import 'package:pocket_bank/utils/constants.dart';

import 'modules/splash/binding/splash_binding.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          initialBinding: SplashBinding(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          getPages: AppPages.pages,
          navigatorKey: GlobalKeys.navigationKey,
        );
      }));
}
