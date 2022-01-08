import 'package:get/get.dart';
import 'package:h_office_flutter/Utils/UtilsWidget/Controller/utils_screen_controller.dart';

class UtilsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UtilsScreenController(),);
  }
}
