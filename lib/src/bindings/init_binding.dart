import 'package:backgroud_rgb/src/controllers/home_controller.dart';
import 'package:get/get.dart';

class InitBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
