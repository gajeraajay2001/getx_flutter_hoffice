import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/AddProspectScreen/Controller/add_prospect_controller.dart';

class AddProspectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AddProspectController(),
    );
  }
}
