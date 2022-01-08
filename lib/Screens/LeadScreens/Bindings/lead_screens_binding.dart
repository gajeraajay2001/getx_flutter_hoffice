import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/LeadScreens/Controller/lead_screens_controller.dart';

class LeadScreensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => LeadScreensController(),
    );
  }
}
