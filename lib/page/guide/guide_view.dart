import 'package:sing_plugin_tools/export.dart';
import '../../routes/navigation.dart';
import 'guide_controller.dart';

class GuideView extends GetView<GuideController> {
  const GuideView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: PageController(),
        onPageChanged: (index) => {
          if(index == controller.list.length - 1){
            SpUtil.write(SpUtil.IS_FIRST,false)
          }
        },
        children: List.generate(controller.list.length, (index) => GestureDetector(
          child: SingImage(controller.list[index]),
          onTap: () {
            if (index == 4) {
              Navigation.toMain();
              // SharedStorage.initUserInfo(store).then((result) {
              //   if (FuncUtils.isLogin()) {
              //     FetchUserInfoAction.loadPetList(store);
              //   }
              //   TKRoute.pushMainRoot(context);
              // });
            }
          },
        ))
    );
  }
}

