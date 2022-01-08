import 'package:get/get.dart';
import 'package:h_office_flutter/Data/ApiClient/api_client.dart';
import 'package:h_office_flutter/Utils/pref_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
  }
}
