import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/HomeScreen/Controller/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
