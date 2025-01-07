import 'package:sing_plugin_tools/export.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SingImage('images/bg_splash.png',width: Get.width, height: Get.height),
            Positioned(
              top: 50.w,
              right: 15.w,
              child: Obx(() => SingButton(
                title: '跳过 ${controller.str.value}',
                titleTextStyle: text_white_12,
                fillColor: AppColor.ff333333.withOpacity(0.4),
                size: Size(70.w, 26.w),
                onPressed: () => controller.toMain(),
              )),
            )
          ],
        )
    );
  }
}

