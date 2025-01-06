import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:sing_plugin_tools/export.dart';

class Global {

  static String APP_NAME = '宠物生活';
  static String BASE_URL = '';

  // 用户协议
  static String agreementUserTitle = "用户协议";
  static String agreementUserUrl = "";
  static String getAgreementUser(){
    return "$agreementUserUrl";
  }
  // 隐私政策
  static String agreementPolicyTitle = "隐私保护政策";
  static String agreementPolicyUrl = "";
  static String getAgreementPolicy()  {
    return "$agreementPolicyUrl";
  }
  // 注销协议
  static String agreementCancelTitle = "账号注销协议";
  static String agreementCancelUrl = "";
  static String getAgreementCancel()  {
    return "$agreementCancelUrl";
  }

  static bool isTest(){
    return SpUtil.read(SpUtil.PHONE, '') == '15900000000';
  }
}