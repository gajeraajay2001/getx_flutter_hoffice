import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/AddProspectScreen/Binding/add_prospect_binding.dart';
import 'package:h_office_flutter/Screens/AddProspectScreen/add_prospect_screen.dart';
import 'package:h_office_flutter/Screens/ContactScreen/Binding/contact_screen_binding.dart';
import 'package:h_office_flutter/Screens/ContactScreen/contact_screen.dart';
import 'package:h_office_flutter/Screens/DateSettingScreen/Binding/date_setting_binding.dart';
import 'package:h_office_flutter/Screens/DateSettingScreen/date_setting_screen.dart';
import 'package:h_office_flutter/Screens/HomeScreen/Binding/home_screen_binding.dart';
import 'package:h_office_flutter/Screens/HomeScreen/home_screen.dart';
import 'package:h_office_flutter/Screens/LeadAndTaskScreen/Binding/lead_and_task_binding.dart';
import 'package:h_office_flutter/Screens/LeadAndTaskScreen/lead_tand_task_screen.dart';
import 'package:h_office_flutter/Screens/LeadScreens/Bindings/lead_screens_binding.dart';
import 'package:h_office_flutter/Screens/LeadScreens/lead_screens.dart';
import 'package:h_office_flutter/Screens/LoginScreen/Binding/login_screen_binding.dart';
import 'package:h_office_flutter/Screens/LoginScreen/login_screen.dart';
import 'package:h_office_flutter/Screens/SettingScreen/Binding/setting_screen_binding.dart';
import 'package:h_office_flutter/Screens/SettingScreen/setting_screen.dart';
import 'package:h_office_flutter/Screens/SplashScreen/Binding/splash_screen_binding.dart';
import 'package:h_office_flutter/Screens/SplashScreen/splash_screen.dart';
import 'package:h_office_flutter/Screens/TaskScreens/Boindings/task_screens_bindings.dart';
import 'package:h_office_flutter/Screens/TaskScreens/task_screens.dart';

class AppRoutes {
  static String loginScreen = "/login_screen";
  static String splashScreen = "/splash_screen";
  static String homeScreen = "/home_screen";
  static String initialRoute = "/initialRoute";
  static String contactScreen = "/contact_screen";
  static String leadAndTaskScreen = "/lead_and_task_screen";
  static String settingScreen = "/setting_screen";
  static String addProspectScreen = "/add_prospect_screen";
  static String leadScreens = "/lead_screens";
  static String taskScreens = "/task_screens";
  static String dateSettingScreens = "/date_setting_screens";
  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeScreenBinding(),
      ],
    ),
    GetPage(
      name: contactScreen,
      page: () => ContactScreen(),
      bindings: [
        ContactScreenBinding(),
      ],
    ),
    GetPage(
      name: leadAndTaskScreen,
      page: () => LeadAndTaskScreen(),
      bindings: [
        LeadAndTaskScreenBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingScreenBinding(),
      ],
    ),
    GetPage(
      name: addProspectScreen,
      page: () => AddProspectScreen(),
      bindings: [
        AddProspectBinding(),
      ],
    ),
    GetPage(
      name: leadScreens,
      page: () => LeadScreens(),
      bindings: [
        LeadScreensBinding(),
      ],
    ),
    GetPage(
      name: taskScreens,
      page: () => TaskScreens(),
      bindings: [
        TaskScreensBinding(),
      ],
    ),
    GetPage(
      name: dateSettingScreens,
      page: () => DateSettingScreen(),
      bindings: [
        DateSettingScreenBinding(),
      ],
    ),
  ];
}
