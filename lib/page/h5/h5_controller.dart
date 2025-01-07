// import 'package:flutter/material.dart';
// import 'package:sing_plugin_tools/export.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter_android/webview_flutter_android.dart';
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
//
// class H5Controller extends GetxController{
//
//   String title = '';
//   String url = '';
//   late WebViewController webViewController;
//   var showClose = false.obs;
//   var progress = 0.obs;
//   var showProgress = false.obs;
//   late bool hiddenNav = false;
//
//   @override
//   void onInit() {
//     super.onInit();
//     title = Get.arguments['title'] ?? '';
//     url = Get.arguments['url'] ?? '';
//     showClose.value = Get.arguments['show_close'] ?? false;
//     hiddenNav = Get.arguments['hidden_nav'] ?? false;
//
//     if(!url.startsWith('http')){
//       EasyLoading.showToast('请检查url是否正确');
//       Get.back();
//       return;
//     }
//
//     late final PlatformWebViewControllerCreationParams params;
//     if (WebViewPlatform.instance is WebKitWebViewPlatform) {
//       params = WebKitWebViewControllerCreationParams(
//         allowsInlineMediaPlayback: true,
//         mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
//       );
//     } else {
//       params = const PlatformWebViewControllerCreationParams();
//     }
//
//     webViewController = WebViewController.fromPlatformCreationParams(params);
//     webViewController
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int pro) {
//             progress.value = pro;
//           },
//           onPageStarted: (String url) {
//             showProgress.value = true;
//           },
//           onPageFinished: (String url) {
//             showProgress.value = false;
//           },
//           onWebResourceError: (WebResourceError error) {
//             debugPrint('''
//               Page resource error:
//                 code: ${error.errorCode}
//                 description: ${error.description}
//                 errorType: ${error.errorType}
//                 isForMainFrame: ${error.isForMainFrame}
//             ''');
//           },
//           onNavigationRequest: (NavigationRequest request) async {
//             debugPrint('allowing navigation to ${request.url}');
//             if(request.url.endsWith('apk') && GetPlatform.isAndroid){
//               if (await canLaunchUrl(Uri.parse(request.url))) {
//                 await launchUrl(Uri.parse(request.url));
//               } else {
//                 EasyLoading.showToast('地址错误');
//               }
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//           onHttpError: (HttpResponseError error) {
//             debugPrint('Error occurred on page: ${error.response?.statusCode}');
//           },
//           onUrlChange: (UrlChange change) {
//             debugPrint('url change to ${change.url}');
//           },
//           onHttpAuthRequest: (HttpAuthRequest request) {
//
//           },
//         ),
//       )
//       ..addJavaScriptChannel('Toaster', onMessageReceived: (JavaScriptMessage message) {
//         EasyLoading.showToast(message.message);
//       })
//       ..addJavaScriptChannel('toBack', onMessageReceived: (JavaScriptMessage message) => clickBack() )
//       ..addJavaScriptChannel('toClose', onMessageReceived: (JavaScriptMessage message) => clickClose() )
//       ..loadRequest(Uri.parse(url));
//       // ..loadFlutterAsset('assets/index.html');
//
//     if (webViewController.platform is AndroidWebViewController) {
//       AndroidWebViewController.enableDebugging(true);
//       (webViewController.platform as AndroidWebViewController).setMediaPlaybackRequiresUserGesture(false);
//     }
//
//     // webViewController.runJavaScript('getImage()');
//   }
//
//   /// 点击返回按钮
//   void clickBack() async {
//     if(!url.startsWith('http')){
//       Get.back();
//       return;
//     }
//
//     var canGoBack = await webViewController.canGoBack();
//     if(canGoBack){
//       webViewController.goBack();
//     }else{
//       Get.back();
//     }
//   }
//
//   /// 点击关闭按钮
//   void clickClose() async {
//     if(!url.startsWith('http')){
//       Get.back();
//       return;
//     }
//
//     Get.back();
//   }
// }