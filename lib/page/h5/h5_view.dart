// import 'package:flutter/material.dart';
// import 'package:sing_plugin_tools/export.dart';
//
// import 'h5_controller.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class H5View extends GetView<H5Controller> {
//   const H5View({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: controller.hiddenNav
//           ? null
//           : AppBar(
//               title: Text(controller.title, style: text_131732_18b),
//               leadingWidth: 100.w,
//               leading: Row(
//                 children: [
//                   SizedBox(width: 4.w),
//                   BackButton(
//                     style: ButtonStyle(
//                         iconSize: MaterialStateProperty.resolveWith<double?>(
//                             (Set<MaterialState> states) => 22.w)),
//                     onPressed: controller.clickBack,
//                   ),
//                   Visibility(
//                       visible: controller.showClose.value,
//                       child: CloseButton(
//                         style: ButtonStyle(
//                             iconSize:
//                                 MaterialStateProperty.resolveWith<double?>(
//                                     (Set<MaterialState> states) => 28.w)),
//                         onPressed: controller.clickClose,
//                       )),
//                 ],
//               ),
//             ),
//       body: SafeArea(
//           top: controller.hiddenNav, bottom: false, child: getContent()),
//     );
//   }
//
//   Widget getContent(){
//     if(!GetPlatform.isAndroid && !GetPlatform.isIOS) {
//       return const Center(child: Text('暂不支持'));
//     }
//     if(!controller.url.startsWith('http')) {
//       return const Center(child: Text('URL不正确'));
//     }
//     return Stack(
//       children: [
//         WebViewWidget(controller: controller.webViewController),
//         Obx(() => Visibility(
//           visible: controller.showProgress.value,
//           child: LinearProgressIndicator(
//             value: controller.progress.value / 100,
//             backgroundColor: Colors.grey[300],
//             valueColor: AlwaysStoppedAnimation<Color>(AppColor.main),
//         ))),
//       ],
//     );
//   }
// }