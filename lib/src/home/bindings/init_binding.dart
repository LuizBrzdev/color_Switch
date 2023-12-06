import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class InitBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
