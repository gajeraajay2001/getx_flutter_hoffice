import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/constant.dart';

class LeadScreensController extends GetxController {
  final appBarTitle = "Quotation".obs;
  final teamTitle = "Team Quotation".obs;
  final countTitle = "Quotation".obs;
  final isSearchFieldVisible = false.obs;

  @override
  void onInit() {
    getAppBarTitle();
    super.onInit();
  }

  isSearchFieldVisibleToggle() {
    isSearchFieldVisible.toggle();
  }

  getAppBarTitle() {
    if (LeadScreenModuleConstant.leadScreenType ==
        LeadScreenModuleConstant.MODULE_TYPE_QUOTATIONS) {
      appBarTitle.value = "Quotation";
      teamTitle.value = "Team Quotation";
      countTitle.value = "Quotation";
    } else if (LeadScreenModuleConstant.leadScreenType ==
            LeadScreenModuleConstant.MODULE_TYPE_SALES ||
        LeadScreenModuleConstant.leadScreenType ==
            LeadScreenModuleConstant.MODULE_TYPE_TOTAL_ORDER) {
      appBarTitle.value = "Total Sales(Without Tax)";
      teamTitle.value = "Team Sales";
      countTitle.value = "sale";
    } else if (LeadScreenModuleConstant.leadScreenType ==
        LeadScreenModuleConstant.MODULE_TYPE_NEW_LEAD) {
      appBarTitle.value = "New Inquiry Stage List";
      teamTitle.value = "Team Inquiry";
      countTitle.value = "Inquiry";
    } else if (LeadScreenModuleConstant.leadScreenType ==
            LeadScreenModuleConstant.MODULE_TYPE_FOLLOW_UP_FOR_TODAY ||
        LeadScreenModuleConstant.leadScreenType ==
            LeadScreenModuleConstant.MODULE_TYPE_TOTAL_FOLLOWUP ||
        LeadScreenModuleConstant.leadScreenType ==
            LeadScreenModuleConstant.MODULE_TYPE_MISSED_FOLLOWUP) {
      appBarTitle.value = "Followup";
      teamTitle.value = "Team Followup";
      countTitle.value = "Today Followup";
    } else if (LeadScreenModuleConstant.leadScreenType ==
        LeadScreenModuleConstant.MODULE_TYPE_APPOINTMENTS) {
      appBarTitle.value = "Appointment";
      teamTitle.value = "Team Appointment";
      countTitle.value = "Appointment";
    } else if (LeadScreenModuleConstant.leadScreenType ==
        LeadScreenModuleConstant.MODULE_TYPE_FORECASTING) {
      appBarTitle.value = "Forecast";
      teamTitle.value = "Team Forecast";
      countTitle.value = "Forecast";
    } else {}
  }
}
