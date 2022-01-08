import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/TaskScreens/Controller/task_screens_controller.dart';

class TaskScreensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TaskScreensController(),
    );
  }
}
