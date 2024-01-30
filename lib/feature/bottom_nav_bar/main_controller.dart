import 'package:flutter/material.dart';

import '/feature/auth/auth_controller.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController find = Get.find();
  final AuthController authController = AuthController.find;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}

