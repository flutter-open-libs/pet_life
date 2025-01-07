
import 'package:sing_plugin_tools/export.dart';

import '../page/main/main_binding.dart';
import '../page/main/main_view.dart';
import '../page/splash/splash_binding.dart';
import '../page/splash/splash_view.dart';
import '../page/guide/guide_binding.dart';
import '../page/guide/guide_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();


  static final routes = [
    GetPage(
      name: Routes.GUIDE,
      page: () => const GuideView(),
      binding: GuideBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => const LoginView(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.H5,
    //   page: () => const H5View(),
    //   binding: H5Binding(),
    // ),
  ];
}