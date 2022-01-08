import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Screens/SplashScreen/Controller/splash_screen_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            image: const AssetImage(splashScreenImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
