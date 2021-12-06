import 'package:backgroud_rgb/src/pages/home_page.dart';
import 'package:backgroud_rgb/src/routes/app_pages.dart';
import 'package:get/get.dart';
import 'app_pages.dart';

class AppRoutes {
  static final ROUTES = <GetPage>[...HOME_PAGE];
  static final HOME_PAGE = [
    GetPage(
      name: AppPages.HOME_PAGE,
      page: () => const HomePage(),
    ),
  ];
}
