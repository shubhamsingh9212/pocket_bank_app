import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/authentication/binding/authentication_binding.dart';
import '../modules/authentication/views/authentication.dart';
import '../modules/home/home.dart';
import '../modules/splash/views/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.authentication,
      page: () => const Authentication(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}
