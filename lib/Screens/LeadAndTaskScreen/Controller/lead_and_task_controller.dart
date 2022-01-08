import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';

class LeadAndTaskController extends GetxController {
  List<String> leadCategoriesTitle = [
    "Quotations",
    "Sales",
    "Total Order",
    "New Lead",
    "Followup for Today",
    "Missed Followup",
    "Appointments",
    "Total Followup",
    "Forecasting"
  ];
  List<String> leadCategoriesImage = [
    leadQuotation,
    leadSales,
    leadTotalOrder,
    leadNewLead,
    leadTodayFollowUp,
    leadMFU,
    leadAppoinment,
    leadTotalFollowUp,
    leadForecast
  ];
  List<String> taskCategoriesImage = [
    taskNewDueTask,
    taskOverDueTask,
    taskFollowingTask,
    taskOpenTask,
    taskCloseTask,
    taskALLTask,
  ];
  List<String> taskCategoriesTitle = [
    "New Tasks",
    "Overdue Tasks",
    "Following Tasks",
    "Open Tasks",
    "Close Tasks",
    "All Tasks",
  ];
}
