import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/LoginScreen/Controller/login_screen_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
