import 'package:sing_plugin_tools/export.dart';

import 'main_controller.dart';



class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());



    // // Get.lazyPut<HomeController>(
    // //   () => HomeController(),
    // // );
    // Get.put(HomeController());
    //
    // Get.lazyPut<MineController>(
    //   () => MineController(),
    // );
    // Get.lazyPut<MsgController>(
    //   () => MsgController(),
    // );
    // Get.lazyPut<ProductController>(
    //   () => ProductController(),
    // );
  }
}
