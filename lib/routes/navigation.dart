import 'package:sing_plugin_tools/export.dart';
import 'app_pages.dart';

class Navigation {

  /// 去网页
  static void toWebView(String url,{String title ='',bool showClose = false,bool isOff = false})  {
    if(url.startsWith('http') || url.startsWith('https')){
      var map = { 'url': url, 'title': title, 'show_close': showClose};
      if(isOff){
        Get.offNamed(Routes.H5, arguments: map);
      }else{
        Get.toNamed(Routes.H5, arguments: map);
      }
      Log.w(map);
    }else{
      EasyLoading.showToast('请检查url是否正确');
    }
  }

  /// 去首页
  static void toMain(){
    Get.offAllNamed(Routes.MAIN);
  }
}







