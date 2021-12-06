import 'package:backgroud_rgb/src/bindings/init_binding.dart';
import 'package:backgroud_rgb/src/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Background RGB',
      darkTheme: ThemeData.dark(),
      initialRoute: AppPages.HOME_PAGE,
      initialBinding: InitBindings(),
      getPages: [...AppRoutes.ROUTES],
      debugShowCheckedModeBanner: false,
    ),
  );
}
