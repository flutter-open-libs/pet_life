import 'package:sing_plugin_tools/export.dart';

class GrowthAlert extends StatelessWidget {
  const GrowthAlert({super.key});

  @override
  Widget build(BuildContext context) {
    final titles = ['日常打卡', '健康管理', '体重记录'];
    final images = ['home_record', 'home_fit', 'home_weight'];

    return Container(
      height: 100.w,
      alignment: Alignment.center,
      decoration: decorationWhiteRadiusTop8,
      child: Container(
        height: 50.w,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: images.map((e) {
            final index = images.indexOf(e);
            return InkWell(
              onTap: () => jumpRecord(index,titles[index]), // TODO 不是太好点击
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingImage('images/$e.png',width: 30.w,height: 30.w),
                  Text(titles[index], style: text_333333_12)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void jumpRecord(int index, String str) {
    EasyLoading.showToast(str);
  }
}