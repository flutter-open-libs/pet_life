//
// import 'package:sing_plugin_tools/export.dart';
//
// import '../../../model/agreement_model.dart';
// import '../../../routes/navigation.dart';
//
// class AgreementListController extends GetxController with StateMixin<List<Agreement>>  {
//
//   final title = ''.obs;
//   var list = [].obs;
//
//   @override
//   void onReady() {
//     super.onReady();
//
//     title.value = Get.arguments['title'];
//
//     List<dynamic> list = Get.arguments['list'];
//     getList(list);
//   }
//
//   getList(List<dynamic> list) async {
//     change(null,status: RxStatus.loading());
//     if(list.isNotEmpty){
//       List<Agreement> temp = [];
//       for(dynamic i in list){
//         temp.add(i as Agreement);
//       }
//       change(temp,status: RxStatus.success());
//     }else{
//       change(null,status: RxStatus.empty());
//     }
//   }
//
//   /// 去网页
//   toWebView(Agreement agreement) => Navigation.toWebView(agreement.url,title: agreement.name);
// }
