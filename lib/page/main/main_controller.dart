import 'package:flutter/services.dart';
import 'package:sing_plugin_tools/export.dart';

import '../../routes/app_pages.dart';


class MainController extends GetxController {


  RxInt currentIndex = 0.obs;
  var lastBackPressTime = -1;

}