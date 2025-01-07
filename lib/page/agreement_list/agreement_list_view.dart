// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sing_plugin_tools/export.dart';
// import '../../../model/agreement_model.dart';
// import 'agreement_list_controller.dart';
//
// class AgreementListView extends GetView<AgreementListController> {
//   const AgreementListView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.bg,
//       appBar: AppBar(
//         title:  Obx(()=>Text(controller.title.value,style: text_title_black)),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: EdgeInsets.only(top: 15.w),
//         child: controller.obx((data) => setItem(data!),
//           onLoading: Center(child: CupertinoActivityIndicator(radius: 15.w)),
//           onEmpty: Center(child: Text('暂无协议',style: text_grey_16b.copyWith(fontSize: 24.sp))), //空数据显示
//           onError: (error) => Center(child: Text('$error',style: text_grey_16b.copyWith(fontSize: 24.sp))), //出错界面显示
//         ),
//       ),
//     );
//   }
//
//   setItem(List<Agreement> list) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) {
//         return SingCellItem(
//           title: list[index].name,
//           onTap: ()=> controller.toWebView(list[index]),
//           showSub: false,
//           showNext: true,
//           backgroundColor: Colors.white,
//         );
//       },
//       itemCount: list.length,
//     );
//   }
// }
