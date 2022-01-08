import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:h_office_flutter/Widgets/BottomSheetWidget/Controller/bottom_sheet_controller.dart';

class BottomSheetWidget extends GetWidget<BottomSheetController> {
  List images = [
    taskAssignTo,
    taskContact,
    taskDueDate,
    taskStatus,
    taskAttach,
    taskPriority,
    taskActivity,
    taskLead
  ];
  List title = [
    "Assign To",
    "Contact",
    "Due Date",
    "Status",
    "Attach",
    "Priority",
    "Activity",
    "Lead"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MathUtilities.screenHeight(context) / 1.5,
      padding: EdgeInsets.symmetric(
          horizontal: getSize(15, context), vertical: getSize(15, context)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Create Task",
                style: TextStyle(
                    color: appTheme.primaryTheme,
                    fontSize: getFontSize(25, context),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: getSize(5, context),
            ),
            Text(
              "Due Date :${13 - 11 - 20210958}",
              style: TextStyle(
                  fontSize: getFontSize(18, context), color: Colors.black45),
            ),
            SizedBox(
              height: getSize(5, context),
            ),
            Text(
              " Task Subject*",
              style: TextStyle(
                  color: appTheme.primaryTheme,
                  fontSize: getFontSize(18, context),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getSize(5, context),
            ),
            TextField(
              maxLines: 3,
              cursorHeight: getSize(18, context),
              cursorColor: appTheme.primaryTheme,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Task Subject*",
                hintStyle: TextStyle(
                    fontSize: getFontSize(18, context), color: Colors.black38),
              ),
            ),
            SizedBox(
              height: getSize(5, context),
            ),
            Text(
              " Add Description",
              style: TextStyle(
                  color: appTheme.primaryTheme,
                  fontSize: getFontSize(18, context),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getSize(5, context),
            ),
            TextField(
              maxLines: 5,
              cursorHeight: getSize(18, context),
              cursorColor: appTheme.primaryTheme,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Task Desc",
                hintStyle: TextStyle(
                    fontSize: getFontSize(18, context), color: Colors.black38),
              ),
            ),
            SizedBox(
              height: getSize(10, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: getSize(200, context),
                      width: getSize(325, context),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: getSize(10, context),
                          mainAxisSpacing: getSize(10, context),
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image(
                                image: AssetImage(images[index]),
                                height: getSize(54, context),
                              ),
                              Flexible(
                                child: Text(
                                  title[index],
                                  style: TextStyle(
                                      fontSize: getFontSize(16, context),
                                      color: Colors.black54),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: const AssetImage(taskSend),
                      height: getSize(50, context),
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                          fontSize: getFontSize(18, context),
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: getSize(20, context),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
