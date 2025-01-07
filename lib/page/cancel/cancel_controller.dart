// import 'package:sing_plugin_tools/export.dart';
//
// import '../../../../net/api_path.dart';
// import '../../../routes/app_pages.dart';
//
// class CancelController extends GetxController {
//
//   var isAgree = false.obs; // 是否同意协议
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   ApiProvider apiProvider = Get.find();
//   void cancel() {
//     if(isAgree.isFalse){
//       EasyLoading.showToast('请阅读并同意相关协议');
//     }else{
//       Get.dialog(
//         CommonDialog(
//           contentStr:'您确定要注销账号吗？',
//           yesFun: ()=> request()),
//       );
//     }
//   }
//
//   void request() async {
//     var result = await apiProvider.getData({},ApiPath.cancel);
//     if(result.code == 200){
//       EasyLoading.showToast('注销成功');
//       Get.offAllNamed(Routes.LOGIN);
//     }else{
//       EasyLoading.showToast('${result.msg}');
//     }
//   }
// }
