import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:pet_life/routes/navigation.dart';
import 'package:sing_plugin_tools/export.dart';

import '../global.dart';

class SplashController extends GetxController {

  var str = 3.obs;
  Timer? _timer;

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (str.value > 0) {
        str.value--;
      } else {
        toMain();
      }
    });
  }

  toMain(){
    Navigation.toMain();
    _timer?.cancel();
  }
}
