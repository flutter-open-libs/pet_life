import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:sing_plugin_tools/export.dart';

import '../global.dart';

class GuideController extends GetxController {

  PageController pageController = PageController();
  var list = [
    'images/guideX1.png',
    'images/guideX2.png',
    'images/guideX3.png',
    'images/guideX4.png',
  ];

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 300), () { // 这里做个延时，某些机型上可能ScreenUtil没初始化好导致弹窗空白
      Get.dialog(
        CommonDialog(
            canCancel: false,
            contentWidget:getContent(),
            yesStr: '同意',
            noStr: '拒绝',
            noFun: () => SystemNavigator.pop(),
            yesFun: ()=> Get.back()
        ),
      );
    });
  }

  // 内容
  Widget getContent(){
    return RichText(
      text: TextSpan(
        style: text_131732_14,
        children: [
          TextSpan(text: '尊敬的用户：\n\n欢迎使用${Global.APP_NAME}！在使用我们的产品和服务前，请你先阅读并同意'),
          TextSpan(
              text: "《${Global.agreementUserTitle}》",
              style: text_main_14b,
              recognizer: TapGestureRecognizer()..onTap = () {
                EasyLoading.showToast('点击${Global.agreementUserTitle}');
                // var map = { 'url': Global.getAgreementUser(), 'title': Global.agreementUserTitle, 'show_close': false};
                // Get.toNamed(Routes.H5_WEBVIEW, arguments: map);
              }),
          const TextSpan(text: '和'),
          TextSpan(
            text: "《${Global.agreementPolicyTitle}》",
            style: text_main_14b,
            recognizer: TapGestureRecognizer()
              ..onTap = (){
                EasyLoading.showToast('点击${Global.agreementPolicyTitle}');

                // var map = { 'url': Global.getAgreementPolicy(), 'title': Global.agreementPolicyTitle, 'show_close': false};
                // Get.toNamed(Routes.H5_WEBVIEW, arguments: map);
              },
          ),
          const TextSpan(text: "，以帮助你了解我们为你提供的服务及处理个人信息的方式。\n\n点击“同意”按钮代表你已同意签署协议及以上约定。")
        ],
      ),
    );
  }
}
