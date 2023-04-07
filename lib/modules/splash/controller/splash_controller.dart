import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString(Constants.token);
    if (token == null) {
      Get.offNamed(Routes.authentication);
    } else {
      Get.offNamed(Routes.home);
    }
  }
}
