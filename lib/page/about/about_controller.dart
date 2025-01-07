import 'package:sing_plugin_tools/bean/package_info.dart';
import 'package:sing_plugin_tools/export.dart';

class AboutController extends GetxController {

  var version = "1.0.0".obs;
  @override
  Future<void> onReady() async {
    super.onReady();

    PackageInfo packageInfo = await SingPluginTools().getPackageInfo();
    version.value = packageInfo.version;
  }
}
