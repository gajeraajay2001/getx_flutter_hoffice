import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Screens/TaskScreens/Controller/task_screens_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

class TaskScreens extends GetWidget<TaskScreensController> {
  const TaskScreens({Key? key}) : super(key: key);

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
          backgroundColor: appTheme.themeBackground,
          title: Text(
            "Task List",
            style: TextStyle(
                color: Colors.white, fontSize: getFontSize(20, context)),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getSize(5, context),
                    vertical: getSize(10, context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("01/11/2021-30/11/2021"),
                    Text("Total Task(0)"),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getSize(5, context),
                    vertical: getSize(10, context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Task",
                      style: TextStyle(
                          color: appTheme.primaryTheme,
                          fontSize: getFontSize(23, context)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.sort,
                        color: appTheme.primaryTheme,
                        size: getSize(35, context),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "No data added yet.",
                    style: TextStyle(color: appTheme.themeBackground),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
