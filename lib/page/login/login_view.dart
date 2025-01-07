// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sing_plugin_tools/export.dart';
//
// import '../../../page/login/login_controller.dart';
// import '../../routes/navigation.dart';
// import '../global_b.dart';
//
// class LoginView extends GetView<LoginController> {
//   const LoginView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//        body: WillPopScope(
//          onWillPop: () => clickBack(),
//          child: SingleChildScrollView(
//            child: Column(
//              children: [
//                InkWell(
//                  splashColor: Colors.transparent,
//                  highlightColor: Colors.transparent,
//                  onTap : () => Navigation.toDevSetting(),
//                  child: Image.asset(package: GlobalB.ImagePackage,"assets/images/ic_login_top.png", width: context.width, height: context.width * 506 / 750)),
//                SizedBox(height: 40.w),
//                buildPhoneWidget(),
//                SizedBox(height: 15.w),
//                buildCodePasswordWidget(context),
//                SizedBox(height: 30.w),
//                buildLoginWidget(context),
//                SizedBox(height: 15.w),
//                buildAgreementWidget(),
//              ],
//            ),
//          ),
//      ),
//    );
//   }
//
//   // 点击返回键
//   Future<bool> clickBack() async {
//       final currentTime = DateTime.now();
//       int timestamp = currentTime.millisecondsSinceEpoch;
//       if(controller.lastBackPressTime == -1 || timestamp - controller.lastBackPressTime >= 2000){
//         EasyLoading.showToast('再按一次退出');
//         controller.lastBackPressTime = timestamp;
//         return false;
//       }else{
//         SystemNavigator.pop();
//         return true;
//       }
//   }
//
//  // 构建手机号输入框
//  Widget buildPhoneWidget(){
//    return  Container(
//      margin: EdgeInsets.symmetric(horizontal: 36.w),
//      child: TextField(
//        controller: controller.phoneController,
//        onChanged: (value) => controller.phoneChange(value),
//        cursorColor: AppColor.grey,
//        cursorHeight: 20.w,
//        style: text_131732_16.copyWith(height: 1.3),
//        keyboardType: TextInputType.number,
//        inputFormatters: <TextInputFormatter>[
//          FilteringTextInputFormatter.digitsOnly
//        ],
//        decoration: InputDecoration(
//          prefixIcon: Image.asset(package: GlobalB.ImagePackage,'assets/images/ic_phone.png',width: 30.w,height: 30.w),
//          prefixIconConstraints:BoxConstraints(minWidth: 30.w, minHeight: 30.w, maxWidth: 30.w,maxHeight: 30.w),
//          prefixText: "  ",
//          isDense: true,
//          contentPadding: EdgeInsets.symmetric(vertical: 15.w),
//          counterText: "", // 去掉底部计数
//          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.line,width: 0.5)), //无焦点时状态
//          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.line,width: 0.5)), //有焦点时状态
//          hintText: '请输入手机号',
//          hintStyle: text_grey_16,
//        ),
//      ),
//    );
//  }
//
//  // 构建验证码输入框
//  Widget buildCodePasswordWidget(BuildContext context){
//    return  Stack(
//      children: [
//        Container(
//          child: TextField(
//            maxLength: 20,
//            onChanged: (value) => controller.codeStr = value,
//            cursorColor: AppColor.grey,
//            cursorHeight: 20.w,
//            style: text_131732_16.copyWith(height: 1.3),
//            keyboardType: TextInputType.number,
//            decoration: InputDecoration(
//              prefixIcon: Image.asset(package: GlobalB.ImagePackage,'assets/images/ic_password.png',width: 30.w,height: 30.w),
//              prefixIconConstraints:BoxConstraints(minWidth: 30.w, minHeight: 30.w, maxWidth: 30.w,maxHeight: 30.w),
//              prefixText: "  ",
//              isDense: true,
//              contentPadding: EdgeInsets.symmetric(vertical: 15.w),
//              counterText: "", // 去掉底部计数
//              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.line,width: 0.5)), //无焦点时状态
//              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColor.line,width: 0.5)), //有焦点时状态
//              hintText: '请输入验证码',
//              hintStyle: text_grey_16,
//            ),
//          ),
//        ),
//        Positioned(
//          right: 15.w,
//          top: 14.w,
//          child: InkWell(
//            onTap: () => controller.getCode(),
//            child: Obx(()=>Container(
//                padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 4.w),
//                decoration: BoxDecoration(
//                  color: controller.canGetCode.value ? AppColor.main :AppColor.line,
//                  borderRadius: BorderRadius.all(Radius.circular(12.w))
//                ),
//                child: Text(controller.codeBtnStr.value,style: text_white_12)),
//          ),
//        ))
//      ],
//    ).marginSymmetric(horizontal: 36.w);
//  }
//
//  // 构建登录按钮
//  Widget buildLoginWidget(BuildContext context){
//    return InkWell(
//      highlightColor: Colors.transparent,
//      splashColor: Colors.transparent,
//      onTap: () => controller.checkAndRequest(),
//      child: Container(
//        margin: EdgeInsets.symmetric(horizontal: 36.w),
//        height: 45.w,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(25.w),
//          color: AppColor.main,
//        ),
//        child: Center(child: Text("登录",style: text_white_16))),
//    );
//  }
//
//  Widget buildAgreementWidget(){
//    return Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: [
//          InkWell(
//            highlightColor: Colors.transparent, // 透明色
//            splashColor: Colors.transparent, // 透明色
//            onTap: (){
//              controller.isAgree.value = !controller.isAgree.value;
//            },
//            child: Container(
//              padding: EdgeInsets.only(left: 36.w,top: 5.w,right: 2.w,bottom: 31.w),
//              child: Obx(() => Image.asset(package: GlobalB.ImagePackage,"assets/images/ic_check.png",width: 25.w,height: 25.w,color: controller.isAgree.value ? AppColor.main : AppColor.grey)),
//            ),
//          ),
//          //=======  协议富文本
//          Container(
//            margin: EdgeInsets.only(top: 7.w),
//            child: Align(
//              alignment: Alignment.topLeft,
//              child: controller.getContent(),
//            ),
//          ),
//        ],
//      );
//  }
// }
