import 'package:sing_plugin_tools/export.dart';

import './guide_controller.dart';

class GuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuideController>(
      () => GuideController(),
    );
  }
}
