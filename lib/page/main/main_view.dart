import 'package:flutter/services.dart';
import 'package:sing_plugin_tools/export.dart';
import '../../widget/growth_alert.dart';
import '../college/college_page.dart';
import '../find/find_page.dart';
import '../home/home_page.dart';
import '../main/main_controller.dart';
import '../mine/mine_page.dart';

class MainView extends GetView<MainController> {
  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body: IndexedStack(
        index: controller.currentIndex.value,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.white,
        items: itemList(),
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex.value,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: AppColor.main,
        unselectedItemColor: AppColor.grey,
        selectedIconTheme: IconThemeData(size: 24, color: AppColor.main),
        unselectedIconTheme: IconThemeData(size: 24, color: AppColor.grey),
        onTap: (index) {
          if (index == 2) {
            Get.bottomSheet(
              const GrowthAlert(),
              backgroundColor: Colors.transparent,
              barrierColor: Colors.black45,
            );
            return;
          }
          controller.currentIndex.value = index;
        },
      ),
    ));
  }

  List<BottomNavigationBarItem> itemList() {
    return [
      const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
      const BottomNavigationBarItem(label: '发现', icon: Icon(Icons.insert_invitation)),
      BottomNavigationBarItem(label: '', icon: Icon(Icons.add_circle, size: 44, color: AppColor.main)),
      const BottomNavigationBarItem(label: '话题', icon: Icon(Icons.chrome_reader_mode)),
      const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.person)),
    ];
  }

  final List<Widget> pageList = [
    HomePage(),
    FindPage(),
    Container(),
    CollegePage(),
    MinePage()
  ];

  // 点击返回键
  Future<bool> clickBack() async {
    final currentTime = DateTime.now();
    int timestamp = currentTime.millisecondsSinceEpoch;
    if(controller.lastBackPressTime == -1 || timestamp - controller.lastBackPressTime >= 2000){
      EasyLoading.showToast('再按一次退出');
      controller.lastBackPressTime = timestamp;
      return false;
    }else{
      SystemNavigator.pop();
      return true;
    }
  }
}