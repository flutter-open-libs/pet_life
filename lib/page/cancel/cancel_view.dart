// import 'package:flutter/gestures.dart';
// import 'package:sing_plugin_tools/export.dart';
//
// import '../../../page/global_b.dart';
// import '../../../routes/navigation.dart';
// import 'cancel_controller.dart';
//
// class CancelView extends GetView<CancelController> {
//   const CancelView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.bg,
//       appBar: AppBar(
//         title: Text('注销账号',style: text_title_black),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 25.w),
//           child: Column(
//             crossAxisAlignment : CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 35.w),
//               Text('注销后，你的账号将:',style: text_131732_20),
//               SizedBox(height: 20.w),
//               Text('1.无法登录',style: text_131732_16),
//               SizedBox(height: 10.w),
//               Text('注销后原来的账号密码将无法登录',style: text_grey_14),
//               SizedBox(height: 20.w),
//               Text('2.账号所有信息将被永久删除',style: text_131732_16),
//               SizedBox(height: 10.w),
//               Text('头像、用户名等身份资料及订单申请信息将被永久删除',style: text_grey_14),
//               SizedBox(height: 20.w),
//               Text('3.账号身份信息将被清空',style: text_131732_16),
//               SizedBox(height: 10.w),
//               Text('手机号、身份证信息、基本信息、手机实名信息、绑定的银行卡信息、会员身份信息等都将被清空',style: text_grey_14),
//               SizedBox(height: 30.w),
//               Row(
//                 crossAxisAlignment : CrossAxisAlignment.start,
//                 children: [
//                   InkWell(
//                     highlightColor: Colors.transparent, // 透明色
//                     splashColor: Colors.transparent, // 透明色
//                     onTap: () => controller.isAgree.value = !controller.isAgree.value,
//                     child: Obx(() => Image.asset(package: GlobalB.ImagePackage,"assets/images/ic_check.png",width: 20.w,height: 20.w,color: controller.isAgree.value ? AppColor.main : AppColor.grey)),
//                   ),
//                   Expanded(
//                     child: RichText(
//                       text: TextSpan(
//                         style: text_grey_12,
//                         children: [
//                           const TextSpan(text: '申请注销即表示您已同意注销协议'),
//                           TextSpan(text: '《${GlobalB.APP_NAME}${GlobalB.agreementCancelTitle}》', style: text_main_12, recognizer: TapGestureRecognizer()..onTap = () {
//                             Navigation.toWebView(GlobalB.getAgreementCancel(),title: GlobalB.agreementCancelTitle);
//                           }),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ]
//               ),
//               SizedBox(height: 30.w),
//               InkWell(
//                 highlightColor: Colors.transparent, // 透明色
//                 splashColor: Colors.transparent, // 透明色
//                 onTap: () => controller.cancel(),
//                 child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15.w),
//                     height: 45.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25.w),
//                       color: AppColor.main,
//                     ),
//                     child: Center(child: Text('申请注销',style: text_white_16))),
//               )
//
//           ]),
//         ),
//       ),
//     );
//   }
// }
