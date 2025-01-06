import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pet_life/page/global.dart';
import 'package:sing_plugin_tools/export.dart';

import 'routes/app_pages.dart';

void main() async {
  AppColor.main = const Color(0xff6ca76d);
  SpUtil.init(SpUtil.spKey);
  await GetStorage.init(SpUtil.spKey);


  runApp(const MyApp());

  configLoading();
  if (GetPlatform.isAndroid) {
    var systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          title: Global.APP_NAME,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: AppColor.ff131732),
              centerTitle: true,
              elevation: 0,
              scrolledUnderElevation: 0.0, // 不然滑动的时候可能到时appbar背景颜色变成页面的背景颜色
            ),
          ),
          debugShowCheckedModeBanner:false,
          initialRoute:AppPages.INITIAL,
          getPages:AppPages.routes,
          builder: EasyLoading.init(builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling), /// 设置文字大小不随系统设置改变
              child: widget!,
            );
          }),
          defaultTransition: Transition.noTransition, // https://blog.csdn.net/yang_6799/article/details/131966520
        );
      },
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..contentPadding = const EdgeInsets.symmetric(horizontal: 12,vertical: 6)
    ..toastPosition = EasyLoadingToastPosition.center
    ..displayDuration = const Duration(milliseconds: 1000)
    ..radius = 6
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = Colors.black38 // 只能在loadingStyle为custom下生效
    ..boxShadow = [const BoxShadow(color: Colors.black38)] // 和backgroundColor一起使用
    ..indicatorColor = Colors.blue
    ..textColor = Colors.white
    ..indicatorSize = 60
    ..indicatorWidget = const SizedBox(width: 70,height: 82,child: CupertinoActivityIndicator(color: Colors.white, radius: 15))
  // ..indicatorType = EasyLoadingIndicatorType.fadingCircle
  // ..indicatorSize = 45.0
  // ..progressColor = Colors.yellow
  // ..maskColor = Colors.blue.withOpacity(0.5)
  // ..userInteractions = false
  // ..dismissOnTap = false
  // ..customAnimation = CustomAnimation()
      ;
}