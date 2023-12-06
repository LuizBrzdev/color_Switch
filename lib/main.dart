import 'package:backgroud_rgb/src/core/app_routes.dart';
import 'package:backgroud_rgb/src/home/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/home/bindings/init_binding.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Background RGB',
      darkTheme: ThemeData.dark(),
      initialRoute: HomePaths.HOME_PAGE,
      initialBinding: InitBindings(),
      getPages: [...AppRoutes.ROUTES],
      debugShowCheckedModeBanner: false,
    ),
  );
}
