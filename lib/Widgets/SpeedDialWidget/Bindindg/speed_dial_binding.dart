import 'package:get/get.dart';
import 'package:h_office_flutter/Widgets/SpeedDialWidget/Controller/speed_dial_controller.dart';

class SpeedDialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SpeedDialController(),
    );
  }
}
