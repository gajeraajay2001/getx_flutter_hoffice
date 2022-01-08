import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Screens/SettingScreen/Controller/setting_screen_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

class SettingScreen extends GetWidget<SettingScreenController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Settings"),
        backgroundColor: appTheme.themeBackground,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getSize(15, context),
          vertical: getSize(25, context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Company Details",
              style: TextStyle(color: appTheme.primaryTheme),
            ),
            SizedBox(
              height: getSize(20, context),
            ),
            Text(
              "Test Medical",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getFontSize(18, context)),
            ),
            Text(
              "Hofficedemo4_ondemandcrm_co",
              style: TextStyle(color: Colors.grey.shade600),
            ),
            SizedBox(
              height: getSize(40, context),
            ),
            Text(
              "General",
              style: TextStyle(color: appTheme.primaryTheme),
            ),
            SizedBox(
              height: getSize(20, context),
            ),
            InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Linked Accounts"),
                  Text(
                    "Linked Account to gmail",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: getSize(20, context),
                  ),
                  Divider(
                    height: getSize(1, context),
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getSize(20, context),
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sync"),
                      Text(
                        "Sync database from server",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: getSize(10, context)),
                    child: const Image(
                      image: AssetImage(syncIcon),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getSize(20, context),
            ),
            Divider(
              height: getSize(1, context),
              color: Colors.grey.shade600,
            ),
            SizedBox(
              height: getSize(20, context),
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Enable"),
                      Text(
                        "Enable Call Dialog",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.enableCheckBox.value,
                      onChanged: (val) {
                        controller.enableCheckBox.value = val!;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getSize(10, context),
            ),
            Divider(
              height: getSize(1, context),
              color: Colors.grey.shade600,
            ),
          ],
        ),
      ),
    ));
  }
}
