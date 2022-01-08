import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/LeadAndTaskScreen/Controller/lead_and_task_controller.dart';

class LeadAndTaskScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeadAndTaskController());
  }
}
