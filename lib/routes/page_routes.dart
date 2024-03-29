import 'package:get/get.dart';
import 'package:pos_tpt_app/feature/history/history_binding.dart';
import 'package:pos_tpt_app/feature/home/home_binding.dart';
import 'package:pos_tpt_app/feature/main/main_binding.dart';
import 'package:pos_tpt_app/feature/main/main_page.dart';
import 'package:pos_tpt_app/feature/history/history_page.dart';
import 'package:pos_tpt_app/feature/home/home_page.dart';
import 'package:pos_tpt_app/feature/setting/setting_binding.dart';
import 'package:pos_tpt_app/feature/setting/setting_page.dart';
import '/feature/loader/loading_page.dart';
import '/feature/login/login_binding.dart';
import '/feature/login/login_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final sideMenuBindings = [
    HomeBinding(),
    HistoryBinding(),
    SettingBinding(),
  ];

  static final pages = [
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.MAIN,
      page: () => const MainPage(),
      binding: MainBinding()
    ),
    GetPage(
      name: PageName.HOME,
      page: () => const HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
      name: PageName.HISTORY,
      page: () => const HistoryPage(),
      binding: HistoryBinding()
    ),
    GetPage(
      name: PageName.SETTING,
      page: () => const SettingPage(),
      binding: SettingBinding()
    ),
    // GetPage(
    //   name: PageName.NOTIFICATION,
    //   page: () => const NotificationPage(),
    // ),
  ];
}
