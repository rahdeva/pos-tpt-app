import 'package:flutter/material.dart';
import 'package:pos_tpt_app/feature/history/history_page.dart';
import 'package:pos_tpt_app/feature/home/home_page.dart';
import 'package:pos_tpt_app/feature/setting/setting_page.dart';
import 'package:pos_tpt_app/model/user.dart';
import 'package:pos_tpt_app/utills/helper/utils.dart';

import '/feature/auth/auth_controller.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  static MainController find = Get.find();
  final AuthController authController = AuthController.find;
  UserData? get user => authController.user;
  int tabIndex = 0;
  List<int> historyIndex = [];

  @override
  void onInit() {
    Utils.loadSideMenuBinding(tabIndex);
    super.onInit();
  }

  List<Widget> pageView = [
    const HomePage(),
    const HistoryPage(),
    const SettingPage(),
  ];

  void changeTabIndex(int index) {
    if (tabIndex != index) {
      if (index != 0) {
        historyIndex.add(index);
      } else if (index == 0) {
        historyIndex.clear();
      }
      Utils.unloadSideMenuBinding(tabIndex);
      Utils.loadSideMenuBinding(index);
    }
    tabIndex = index;
    update(['content', 'side-menu']);
  }
}

