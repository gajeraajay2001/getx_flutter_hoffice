import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController domainController = TextEditingController();
  String userName = "", password = "", domainName = "";
  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    domainController.dispose();
    super.onClose();
  }
}
