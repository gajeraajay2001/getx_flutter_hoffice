import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/DateSettingScreen/Controller/date_setting_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:intl/intl.dart';

class DateSettingScreen extends GetWidget<DateSettingScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appTheme.themeBackground,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
            ),
            title: Obx(
              () => Text(controller.appBarTitle.value),
            ),
            bottom: TabBar(
              controller: controller.tabController,
              tabs: controller.myTabs,
              indicatorColor: appTheme.primaryTheme,
            ),
          ),
          body: Obx(
            () => TabBarView(
              controller: controller.tabController,
              children: [
                Column(
                  children: [
                    Container(
                      height: getSize(170, context),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(getSize(8, context))),
                      margin: EdgeInsets.symmetric(
                          horizontal: getSize(15, context),
                          vertical: getSize(20, context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: DAY.Today,
                                  groupValue: controller.dayGroup.value,
                                  onChanged: (DAY? val) {
                                    controller.dayGroup.value = val!;
                                  }),
                              const Text("Today"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              DateFormat("dd/MM/yyyy").format(DateTime.now()),
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: DAY.Yesterday,
                                  groupValue: controller.dayGroup.value,
                                  onChanged: (DAY? val) {
                                    controller.dayGroup.value = val!;
                                  }),
                              const Text("Yesterday"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              DateFormat("dd/MM/yyyy").format(DateTime.now()
                                  .subtract(const Duration(days: 1))),
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: getSize(250, context),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(getSize(8, context))),
                      margin: EdgeInsets.symmetric(
                          horizontal: getSize(15, context),
                          vertical: getSize(20, context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: WEEK.Last7Days,
                                  groupValue: controller.weekGroup.value,
                                  onChanged: (WEEK? val) {
                                    controller.weekGroup.value = val!;
                                  }),
                              const Text("Last 7 days"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: 6)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now())}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: WEEK.ThisWeek,
                                  groupValue: controller.weekGroup.value,
                                  onChanged: (WEEK? val) {
                                    controller.weekGroup.value = val!;
                                  }),
                              const Text("This week"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 7)))}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: WEEK.LastWeek,
                                  groupValue: controller.weekGroup.value,
                                  onChanged: (WEEK? val) {
                                    controller.weekGroup.value = val!;
                                  }),
                              const Text("Last Week"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday + 6)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday)))}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: getSize(250, context),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(getSize(8, context))),
                      margin: EdgeInsets.symmetric(
                          horizontal: getSize(15, context),
                          vertical: getSize(20, context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: MONTH.Last30Days,
                                  groupValue: controller.monthGroup.value,
                                  onChanged: (MONTH? val) {
                                    controller.monthGroup.value = val!;
                                  }),
                              const Text("Last 30 days"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: 6)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now())}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: MONTH.ThisMonth,
                                  groupValue: controller.monthGroup.value,
                                  onChanged: (MONTH? val) {
                                    controller.monthGroup.value = val!;
                                  }),
                              const Text("This month"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday - 7)))}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: MONTH.LastMonth,
                                  groupValue: controller.monthGroup.value,
                                  onChanged: (MONTH? val) {
                                    controller.monthGroup.value = val!;
                                  }),
                              const Text("Last month"),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: getSize(55, context)),
                            child: Text(
                              "${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday + 6)))} - ${DateFormat("dd/MM/yyyy").format(DateTime.now().subtract(Duration(days: DateTime.now().weekday)))}",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
