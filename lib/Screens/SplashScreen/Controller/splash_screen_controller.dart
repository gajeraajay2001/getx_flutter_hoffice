import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(
      const Duration(seconds: 5),
      () => Get.offNamed(AppRoutes.loginScreen),
    );
    super.onInit();
  }
}
