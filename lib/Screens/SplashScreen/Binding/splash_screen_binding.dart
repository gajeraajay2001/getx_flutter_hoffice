import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/SplashScreen/Controller/splash_screen_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
