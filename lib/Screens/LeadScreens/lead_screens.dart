import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/LeadScreens/Controller/lead_screens_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

class LeadScreens extends GetWidget<LeadScreensController> {
  const LeadScreens({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (controller.isSearchFieldVisible.value) {
                controller.isSearchFieldVisibleToggle();
              } else {
                Get.back();
              }
            },
          ),
          actions: [
            Obx(
              () => IconButton(
                  onPressed: () {
                    controller.isSearchFieldVisible.value =
                        !controller.isSearchFieldVisible.value;
                  },
                  icon: (controller.isSearchFieldVisible.value)
                      ? const Icon(Icons.close)
                      : const Icon(Icons.search)),
            ),
          ],
          backgroundColor: appTheme.themeBackground,
          title: Obx(
            () => (controller.isSearchFieldVisible.value)
                ? const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white30),
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.white30)),
                  )
                : Text(
                    controller.appBarTitle.value,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(20, context)),
                  ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getSize(5, context), vertical: getSize(5, context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "09/12/2021-09/12/2021",
                    style: TextStyle(fontSize: getSize(18, context)),
                  ),
                  Text(
                    controller.teamTitle.value,
                    style: TextStyle(fontSize: getSize(18, context)),
                  ),
                ],
              ),
              SizedBox(
                height: getSize(10, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0 ${controller.countTitle.value}",
                    style: TextStyle(fontSize: getSize(18, context)),
                  ),
                  Text(
                    "Total Amount: \u{20B9}0.00",
                    style: TextStyle(fontSize: getSize(18, context)),
                  ),
                ],
              ),
              SizedBox(
                height: getSize(18, context),
              ),
              Text(
                "No Data Found !",
                style: TextStyle(fontSize: getSize(20, context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
