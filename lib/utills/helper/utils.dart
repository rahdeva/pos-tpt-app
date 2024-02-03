import 'package:get/get.dart';
import 'package:pos_tpt_app/feature/history/history_controller.dart';
import 'package:pos_tpt_app/feature/home/home_controller.dart';
import 'package:pos_tpt_app/feature/setting/setting_controller.dart';

typedef BindingCreator<S extends Bindings> = S Function();

class Utils {
  Utils._();

  static late final List<BindingCreator<Bindings>> _sideMenuBindings;

  static void initializedSideMenu({
    required List<Bindings> bindings
  }) {
    _sideMenuBindings = bindings.map(
      (binding) => () => binding
    ).toList();
  }

  static void loadSideMenuBinding(int index) async {
    final bindingCreator = _sideMenuBindings[index].call();
    bindingCreator.dependencies();
  }

  static void unloadSideMenuBinding(int index) async {
    switch (index) {
      case 0:
        Get.delete<HomeController>();
        break;
      case 1:
        Get.delete<HistoryController>();
        break;
      case 2:
        Get.delete<SettingController>();
        break;
      default:
    }
  }

  static void closeSideMenu(int index) {
    final bindingCreator = _sideMenuBindings[index].call();
    bindingCreator.dependencies();
  }
}