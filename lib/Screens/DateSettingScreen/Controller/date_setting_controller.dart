import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateSettingScreenController extends GetxController
    with SingleGetTickerProviderMixin {
  final appBarTitle = "Date Setting".obs;
  late TabController tabController;
  Rx<DAY> dayGroup = DAY.NULL.obs;
  Rx<WEEK> weekGroup = WEEK.NULL.obs;
  Rx<MONTH> monthGroup = MONTH.NULL.obs;
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'DAY'),
    const Tab(text: 'WEEK'),
    const Tab(text: 'MONTH'),
    const Tab(text: 'CUSTOM'),
  ].obs;
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: myTabs.length);

    tabController.addListener(_handleTabSelection);
    super.onInit();
  }

  void _handleTabSelection() {
    Get.appUpdate();
    if (tabController.indexIsChanging) {
      switch (tabController.index) {
        case 0:
          appBarTitle.value = "DAY";
          break;
        case 1:
          appBarTitle.value = "WEEK";

          break;
        case 2:
          appBarTitle.value = "MONTH";

          break;
        case 3:
          appBarTitle.value = "CUSTOM";

          break;
      }
    }
  }
}

enum DAY { Today, Yesterday, NULL }
enum WEEK { Last7Days, ThisWeek, LastWeek, NULL }
enum MONTH { Last30Days, ThisMonth, LastMonth, NULL }
