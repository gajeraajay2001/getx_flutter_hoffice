import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProspectController extends GetxController {
  TextEditingController contactNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController eMailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController officeNumberController = TextEditingController();
  TextEditingController otherNumberController = TextEditingController();
  TextEditingController homeNumberController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController linkedIdController = TextEditingController();
  @override
  void onClose() {
    contactNameController.dispose();
    companyNameController.dispose();
    mobileNumberController.dispose();
    eMailController.dispose();
    addressController.dispose();
    pinCodeController.dispose();
    officeNumberController.dispose();
    otherNumberController.dispose();
    homeNumberController.dispose();
    websiteController.dispose();
    linkedIdController.dispose();
    super.onClose();
  }

  final moreInfoVisible = false.obs;
  final checkBoxValue = false.obs;
  List contentTitleList = [].obs;
  List countryList = [].obs;
  final contentTitle = "Mr.".obs;
  final country = "India".obs;
  final countryIndex = 0.obs;
  final contentTitleIndex = 0.obs;
}
