import 'package:get/get.dart';
import 'package:h_office_flutter/Widgets/BottomSheetWidget/Controller/bottom_sheet_controller.dart';

class BottomSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BottomSheetController(),
    );
  }
}
