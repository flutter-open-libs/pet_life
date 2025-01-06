
import 'package:sing_plugin_tools/export.dart';

import '../page/splash/splash_binding.dart';
import '../page/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

  ];
}