// import 'dart:async';
//
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sing_plugin_tools/export.dart';
//
// import '../../model/login_model.dart';
// import '../global_b.dart';
// import '../../net/api_path.dart';
// import '../../routes/app_pages.dart';
// import '../../routes/navigation.dart';
//
// class LoginController extends GetxController {
//   var platform =  const MethodChannel("sing.top/rth");
//
//   var lastBackPressTime = -1;
//   var phoneController = TextEditingController();
//   var codeStr = '';
//   var codeBtnStr = '获取验证码'.obs;
//   var isAgree = false.obs; // 是否同意协议
//   var canGetCode = true.obs; // 是否可以获取验证码
//
//   void getCode() async {
//     if(phoneController.text.length != 11 || !phoneController.text.startsWith('1')){
//       EasyLoading.showToast('请输入正确的手机号');
//     }else if(isAgree.isFalse){
//       showAgreementDialog(() => getCode());
//     }else{
//       Map<String, dynamic> obj = {'phone': phoneController.text};
//       //执行网络请求
//       var result = await apiProvider.getData(obj,ApiPath.login_code);
//       if(result.code == 200){
//         EasyLoading.showToast('验证码获取成功');
//         startCountDown(60);
//       }else{
//         EasyLoading.showToast('验证码获取失败');
//       }
//     }
//   }
//
//   // 倒计时方法 time 倒计时时间
//   void startCountDown(int time) {
//     if(!canGetCode.value){
//       return;
//     }
//     canGetCode.value = false;
//
//     if (_timer != null) {
//       killTimer();
//     }
//     if (time <= 0) {
//       return;
//     }
//
//     var countTime = time;
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (countTime <= 0) {// 倒计时结束
//         timer.cancel();
//         codeBtnStr.value = '重新获取';
//         canGetCode.value = true;
//       } else {
//         codeBtnStr.value = '${countTime}s';
//         countTime--;
//         canGetCode.value = false;
//       }
//     });
//   }
//
//   Timer? _timer; // 倒计时器
//   void killTimer() {
//     _timer?.cancel(); // 关闭计时器
//     _timer = null; // 置空
//   }
//
//   @override
//   void onInit() {
//     super.onInit();
//
//     SpUtil.write(SpUtil.TOKEN, '');
//     SpUtil.write(SpUtil.PHONE, '');
//     SpUtil.write(SpUtil.CHANNEL_ID, -1);
//     SpUtil.write('from_login', true);// 从登录页面去首页
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//     killTimer();
//   }
//
//   // 登录
//   void checkAndRequest(){
//     if(phoneController.text.length != 11 || !phoneController.text.startsWith('1')){
//       EasyLoading.showToast('请输入正确的手机号');
//     } else if (codeStr.isEmpty){
//       EasyLoading.showToast('请输入验证码');
//     } else if (isAgree.isFalse){
//       showAgreementDialog(() => checkAndRequest());
//     }else{
//       requestLogin();
//     }
//   }
//
//   ApiProvider apiProvider = Get.find();
//   void requestLogin() async {
//       Map<String, dynamic> obj = {
//         'phone': phoneController.text,
//         'code': codeStr,
//         'channel_code': GlobalB.CHANNEL,
//       };
//     //执行网络请求
//     var result = await apiProvider.getData(obj, ApiPath.login);
//     if(result.code == 200){
//       var login = Login.fromJson(result.data);
//
//       SpUtil.write(SpUtil.TOKEN, login.token);
//       SpUtil.write(SpUtil.PHONE, login.phone);
//       SpUtil.write(SpUtil.CHANNEL_ID, login.channel_id);
//       Navigation.toMain();
//     }
//   }
//
//   void showAgreementDialog(Function fun){
//     Get.dialog(
//       CommonDialog(
//         contentWidget: getContent(),
//         yesStr: '同意',
//         noStr: '取消',
//         yesFun: ()=>{
//           isAgree.value = true,
//           Get.back(),
//           fun(),
//         },
//       )
//     );
//   }
//
//   Widget getContent(){
//     return RichText(
//       text: TextSpan(
//         style: text_grey_12,
//         children: [
//           const TextSpan(text: '我已阅读并同意'),
//           TextSpan(text: '《${GlobalB.agreementUserTitle}》', style: text_main_12, recognizer: TapGestureRecognizer()..onTap = () {
//             Navigation.toWebView(GlobalB.getAgreementUser(),title: GlobalB.agreementUserTitle);
//           }),
//           const TextSpan(text: '及'),
//           TextSpan(text: '《${GlobalB.agreementPolicyTitle}》', style: text_main_12, recognizer: TapGestureRecognizer()..onTap = (){
//             Navigation.toWebView(GlobalB.getAgreementPolicy(),title: GlobalB.agreementPolicyTitle);
//           }),
//           const TextSpan(text: '\n未注册的手机号验证后自动创建用户'),
//         ],
//       ),
//     );
//   }
//
//   /// 手机号输入变化
//   void phoneChange(String phone) {
//     String str;
//     if(phone.startsWith('86')){
//       str = phone.substring(phone.indexOf('1'),phone.length);
//     }else{
//       str = phone;
//     }
//
//     if(str.length <= 11){
//       phoneController.text = str;
//     }else{
//       phoneController.text = str.substring(0,11);
//     }
//   }
// }
