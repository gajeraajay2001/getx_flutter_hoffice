import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/constant.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Routes/app_routes.dart';
import 'package:h_office_flutter/Screens/HomeScreen/Controller/home_screen_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:h_office_flutter/Utils/utilities.dart';
import 'package:h_office_flutter/Widgets/SpeedDialWidget/speed_dial_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  List<dynamic> speedDialChildOne = [taskIcon, "Task", 25.0];
  List<dynamic> speedDialChildTwo = [contactIcon, "Raw Data", 35.0];
  List<dynamic> speedDialChildThree = [inquiryIcon, "Inquiry", 35.0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else {
                exit(0);
              }
            },
            child: Padding(
              padding: EdgeInsets.all(getSize(10, context)),
              child: const Image(
                image: AssetImage(hLogo2),
              ),
            ),
          ),
          actions: [
            InkWell(
                onTap: () {
                  showToast(
                    context,
                    "No More Notification Available.",
                  );
                },
                child: Icon(Icons.notifications, size: getSize(25, context))),
            SizedBox(
              width: getSize(20, context),
            ),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.settingScreen);
                },
                child: Icon(
                  Icons.settings,
                  size: getSize(25, context),
                )),
            SizedBox(
              width: getSize(20, context),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          "Logout",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        content: Text(
                          "Are you sure you want to logout?",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: getFontSize(17, context)),
                        ),
                        actions: [
                          SizedBox(
                            child: TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                "NO",
                                style: TextStyle(
                                    color: appTheme.primaryTheme,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getFontSize(16, context)),
                              ),
                            ),
                            width: getSize(60, context),
                          ),
                          SizedBox(
                            child: TextButton(
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.remove('UserName');
                                showToast(
                                  context,
                                  "Logout Successfully",
                                );
                                Get.offAllNamed(AppRoutes.loginScreen);
                              },
                              child: Text(
                                "YES",
                                style: TextStyle(
                                    color: appTheme.primaryTheme,
                                    fontWeight: FontWeight.normal,
                                    fontSize: getFontSize(16, context)),
                              ),
                            ),
                            width: getSize(60, context),
                          ),
                        ],
                      );
                    });
              },
              child: Icon(
                Icons.power_settings_new,
                size: getSize(25, context),
              ),
            ),
            SizedBox(
              width: getSize(20, context),
            ),
          ],
          backgroundColor: appTheme.themeBackground,
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: getFontSize(20, context)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getSize(30, context), vertical: getSize(30, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      ModuleConstant.screenType =
                          ModuleConstant.MODULE_TYPE_LEAD_SCREEN;
                      Get.toNamed(AppRoutes.leadAndTaskScreen);
                    },
                    child: getContainer(
                        image: inquiryIcon,
                        title: "Inquiry",
                        imageSize: getSize(125, context),
                        context: context),
                  ),
                  InkWell(
                    onTap: () {
                      ModuleConstant.screenType =
                          ModuleConstant.MODULE_TYPE_TASK_SCREEN;
                      Get.toNamed(AppRoutes.leadAndTaskScreen);
                    },
                    child: getContainer(
                        image: taskIcon,
                        title: "Task",
                        imageSize: getSize(125, context),
                        context: context),
                  )
                ],
              ),
              SizedBox(
                height: getSize(40, context),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.contactScreen);
                },
                child: getContainer(
                    image: contactIcon,
                    title: "Contact",
                    imageSize: getSize(125, context),
                    context: context),
              )
            ],
          ),
        ),
        floatingActionButton: SpeedDialWidget(
          speedDialChildOne: speedDialChildOne,
          speedDialChildThree: speedDialChildThree,
          speedDialChildTwo: speedDialChildTwo,
        ),
      ),
    );
  }

  Row getRow(
      {required BuildContext context,
      required String image,
      required String title,
      required double imageSize}) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: getSize(10, context),
                vertical: getSize(5, context)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(getSize(5, context)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black45, blurRadius: 2, spreadRadius: 2)
                ]),
            child: Text(
              title,
              style: TextStyle(color: appTheme.primaryTheme),
            )),
        SizedBox(
          width: getSize(7, context),
        ),
        Padding(
          padding: EdgeInsets.only(right: getSize(8, context)),
          child: InkWell(
            onTap: () {
              if (title == "Task") {
                print("Task");
                // _showMyBottomSheet();
              } else if (title == "Raw Data") {
                // Navigator.of(context).pushNamed(AddProspectScreen.routes);
              }
            },
            child: CircleAvatar(
              backgroundColor: appTheme.primaryTheme,
              radius: getSize(23, context),
              child: Image(
                image: AssetImage(image),
                width: getSize(imageSize, context),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container getContainer(
      {required String image,
      required String title,
      required double imageSize,
      required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
      //alignment: Alignment.center,
      // height: getSize(
      //   150,
      // ),
      // width: getSize(
      //   150,
      // ),
      color: appTheme.themeBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: getSize(10, context),
          // ),
          Image(
            image: AssetImage(image),
            width: getSize(imageSize, context),
            height: getSize(imageSize, context),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: getFontSize(20, context)),
          ),
          SizedBox(
            height: getSize(10, context),
          )
        ],
      ),
    );
  }
}
