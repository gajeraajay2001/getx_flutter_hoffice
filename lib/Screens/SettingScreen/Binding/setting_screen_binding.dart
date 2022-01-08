import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/SettingScreen/Controller/setting_screen_controller.dart';

class SettingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SettingScreenController(),
    );
  }
}
