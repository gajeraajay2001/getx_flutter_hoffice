import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/ContactScreen/Controller/contact_screen_controller.dart';

class ContactScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactScreenController());
  }
}
