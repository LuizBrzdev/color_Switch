// ignore_for_file: non_constant_identifier_names

import 'package:backgroud_rgb/src/home/routes/app_pages.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';

class HomeRoutes {
  static final HOME_PAGE = [
    GetPage(
      name: HomePaths.HOME_PAGE,
      page: () => const HomePage(),
    ),
  ];
}
