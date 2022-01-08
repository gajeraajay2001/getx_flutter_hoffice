import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/DateSettingScreen/Controller/date_setting_controller.dart';
import 'package:h_office_flutter/Screens/SettingScreen/Controller/setting_screen_controller.dart';

class DateSettingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => DateSettingScreenController(),
    );
  }
}
