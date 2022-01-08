class ModuleConstant {
  static String screenType = "LeadScreen";
  static const MODULE_TYPE_LEAD_SCREEN = "LeadScreen";
  static const MODULE_TYPE_TASK_SCREEN = "TaskScreen";
}

class TaskScreenModuleConstant {
  static String taskListScreenType = "New Tasks";
  static const MODULE_TYPE_NEW_TASKS = "New Tasks";
  static const MODULE_TYPE_OVERDUE_TASKS = "Overdue Tasks";
  static const MODULE_TYPE_FOLLOWING_TASKS = "Following Tasks";
  static const MODULE_TYPE_OPEN_TASKS = "Open Tasks";
  static const MODULE_TYPE_CLOSE_TASKS = "Close Tasks";
  static const MODULE_TYPE_ALL_TASKS = "All Tasks";
}

class LeadScreenModuleConstant {
  static String leadScreenType = "Quotations";
  static const MODULE_TYPE_QUOTATIONS = "Quotations";
  static const MODULE_TYPE_SALES = "Sales";
  static const MODULE_TYPE_TOTAL_ORDER = "Total Order";
  static const MODULE_TYPE_NEW_LEAD = "New Lead";
  static const MODULE_TYPE_FOLLOW_UP_FOR_TODAY = "Followup for Today";
  static const MODULE_TYPE_MISSED_FOLLOWUP = "Missed Followup";
  static const MODULE_TYPE_APPOINTMENTS = "Appointments";
  static const MODULE_TYPE_TOTAL_FOLLOWUP = "Total Followup";
  static const MODULE_TYPE_FORECASTING = "Forecasting";
}

class BaseUrl {
  static String BASEURL = "";
}

bool isInternetOn = false;
bool isLoading = false;
