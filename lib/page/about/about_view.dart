// import 'package:flutter/material.dart';
// import 'package:sing_plugin_tools/export.dart';
//
// import '../global_b.dart';
// import 'about_controller.dart';
//
// class AboutView extends GetView<AboutController> {
//   const AboutView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text('关于我们',style: text_title_black),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             color: AppColor.bg,
//             width: Get.width,
//             height: Get.height - kToolbarHeight,
//             child: SingleChildScrollView(
//                 child: Padding(
//                     padding:EdgeInsets.symmetric(horizontal: 15.w,),
//                     child:Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 40.w,),
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(12.w),
//                           child: Image.asset(package: GlobalB.ImagePackage,"assets/images/ic_launcher.png", width:80.w, height:80.w),
//                         ),
//                         SizedBox(height: 12.w,),
//                         Text(GlobalB.APP_NAME,style: text_131732_18b),
//                         Obx(()=>Text("v ${controller.version}",style: text_grey_16)),
//                         SizedBox(height: 30.w,),
//                         Text("${GlobalB.APP_NAME}是一款高额度、 低利息、无抵押的信用贷款产品，面向个人、企业提供信用借款和消费分期服务。\n\n放款率高：放款成功人数高达99%\n循环额度：随借随还\n流程简单：凭身份即可申请放款\n综合年利率（单利）：12%\n\n客服/投诉邮箱：YINRENYI@RENTIANJINFU.COM\n客服工作时间：周一至周五（09:00-18:00)",style: text_131732_14),
//                       ],
//                     )
//                 )
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
