import 'package:get/get.dart';

class ContactScreenController extends GetxController {
  final searchVisible = false.obs;
  final radioVisible = false.obs;
  RxString groupValue = "Name".obs;

  searchToggle() {
    searchVisible.toggle();
  }

  radioToggle() {
    radioVisible.toggle();
  }
}
