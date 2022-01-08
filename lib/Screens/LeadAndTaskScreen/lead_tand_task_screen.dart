import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/constant.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Routes/app_routes.dart';
import 'package:h_office_flutter/Screens/LeadAndTaskScreen/Controller/lead_and_task_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:h_office_flutter/Utils/utilities.dart';
import 'package:h_office_flutter/Widgets/SpeedDialWidget/speed_dial_widget.dart';

class LeadAndTaskScreen extends GetWidget<LeadAndTaskController> {
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
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.all(getSize(10, context)),
              child: const Image(
                image: AssetImage(hLogo2),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showToast(
                    context,
                    "No More Notification Available.",
                  );
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.dateSettingScreens);
                },
                icon: const Icon(Icons.date_range)),
            IconButton(
                onPressed: () {
                  filterDialogue(context: context);
                },
                icon: const Icon(Icons.filter_list)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.autorenew)),
          ],
          backgroundColor: appTheme.themeBackground,
          title: Text(
            (ModuleConstant.screenType ==
                    ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                ? "Task"
                : "Lead",
            overflow: TextOverflow.fade,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: getFontSize(20, context)),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: getSize(50, context),
                  padding: EdgeInsets.symmetric(
                      horizontal: getSize(5, context),
                      vertical: getSize(10, context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "01/11/2021-30/11/2021",
                        style: TextStyle(fontSize: getSize(18, context)),
                      ),
                      Text(
                        (ModuleConstant.screenType ==
                                ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                            ? "My Task"
                            : "My Inquiry",
                        style: TextStyle(fontSize: getSize(18, context)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: getSize(
                              (ModuleConstant.screenType ==
                                      ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                                  ? 220
                                  : 300,
                              context),
                          width: MathUtilities.screenWidth(context),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getSize(10, context),
                                vertical: getSize(0, context)),
                            child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: (ModuleConstant.screenType ==
                                        ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                                    ? controller.taskCategoriesImage.length
                                    : controller.leadCategoriesTitle.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.of(context).orientation ==
                                              Orientation.landscape
                                          ? 3
                                          : 3,
                                  crossAxisSpacing: getSize(10, context),
                                  mainAxisSpacing: getSize(10, context),
                                  childAspectRatio: (1 / 0.7),
                                ),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      if (ModuleConstant.screenType ==
                                          ModuleConstant
                                              .MODULE_TYPE_TASK_SCREEN) {
                                        TaskScreenModuleConstant
                                                .taskListScreenType =
                                            controller
                                                .taskCategoriesTitle[index];
                                        Get.toNamed(AppRoutes.taskScreens);
                                      } else {
                                        LeadScreenModuleConstant
                                                .leadScreenType =
                                            controller
                                                .leadCategoriesTitle[index];
                                        Get.toNamed(AppRoutes.leadScreens);
                                      }
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: getSize(5, context)),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "\$10",
                                            style: TextStyle(
                                                color: appTheme.primaryTheme,
                                                fontSize: getSize(15, context)),
                                          ),
                                          Image(
                                            image: AssetImage((ModuleConstant
                                                        .screenType ==
                                                    ModuleConstant
                                                        .MODULE_TYPE_TASK_SCREEN)
                                                ? controller
                                                    .taskCategoriesImage[index]
                                                : controller
                                                        .leadCategoriesImage[
                                                    index]),
                                            width: getSize(30, context),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          SizedBox(
                                            height: getSize(17, context),
                                            child: FittedBox(
                                              child: Text(
                                                (ModuleConstant.screenType ==
                                                        ModuleConstant
                                                            .MODULE_TYPE_TASK_SCREEN)
                                                    ? controller
                                                            .taskCategoriesTitle[
                                                        index]
                                                    : controller
                                                            .leadCategoriesTitle[
                                                        index],
                                                style: TextStyle(
                                                    fontSize: getFontSize(
                                                        18, context)),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        if (ModuleConstant.screenType ==
                            ModuleConstant.MODULE_TYPE_LEAD_SCREEN)
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                getFunnelContainer(
                                    context: context,
                                    image: funnel1,
                                    width: 400,
                                    height: 60,
                                    text: "1 (Prospect)"),
                                getFunnelContainer(
                                    context: context,
                                    image: funnel2,
                                    width: 400,
                                    height: 60,
                                    text: "1 (Lead)"),
                                getFunnelContainer(
                                    context: context,
                                    image: funnel3,
                                    width: 400,
                                    height: 60,
                                    text: "0 (Q.Lead)"),
                                getFunnelContainer(
                                    context: context,
                                    image: funnel4,
                                    width: 400,
                                    height: 60,
                                    text: "0 (Opportunity)"),
                                getFunnelContainer(
                                    context: context,
                                    image: funnel5,
                                    width: 400,
                                    height: 60,
                                    text: "0 (Lost)"),
                                getFunnelContainer(
                                    context: context,
                                    image: funnel6,
                                    width: 400,
                                    height: 60,
                                    text: "2 (Won)"),
                              ],
                            ),
                          ),
                        if (ModuleConstant.screenType ==
                            ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All Open Tasks",
                                style: TextStyle(
                                    fontSize: getFontSize(20, context)),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: getSize(92, context),
              right: getSize(18, context),
              child: FloatingActionButton(
                onPressed: () {},
                heroTag: "as1",
                child: Icon(
                  Icons.search,
                  size: getSize(30, context),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: SpeedDialWidget(
          speedDialChildOne: speedDialChildOne,
          speedDialChildThree: speedDialChildThree,
          speedDialChildTwo: speedDialChildTwo,
        ),
      ),
    );
  }

  filterDialogue({required BuildContext context}) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(getSize(20, context)))),
            title: Text(
              "Apply Filter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getSize(22, context)),
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getSize(10, context),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: getSize(10, context),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Column(
                        children: [
                          Container(
                            width: getSize(70, context),
                            height: getSize(70, context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getSize(100, context)),
                                color: BaseTheme().themeBackground),
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage(filterMy),
                            ),
                          ),
                          SizedBox(
                            height: getSize(15, context),
                          ),
                          Text(
                            (ModuleConstant.screenType ==
                                    ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                                ? "My Task"
                                : "My Inquiry",
                            style: TextStyle(fontSize: getSize(16, context)),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Column(
                        children: [
                          Container(
                            width: getSize(70, context),
                            height: getSize(70, context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getSize(100, context)),
                                color: BaseTheme().themeBackground),
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage(filterTeam),
                            ),
                          ),
                          SizedBox(
                            height: getSize(15, context),
                          ),
                          Text(
                            (ModuleConstant.screenType ==
                                    ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                                ? "My Team\n Task"
                                : "My Team\nInquiry",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: getSize(16, context)),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Column(
                        children: [
                          Container(
                            width: getSize(70, context),
                            height: getSize(70, context),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getSize(100, context)),
                                color: BaseTheme().themeBackground),
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage(filterAll),
                            ),
                          ),
                          SizedBox(
                            height: getSize(10, context),
                          ),
                          Text(
                            (ModuleConstant.screenType ==
                                    ModuleConstant.MODULE_TYPE_TASK_SCREEN)
                                ? "All Task"
                                : "All Inquiry",
                            style: TextStyle(fontSize: getSize(16, context)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getSize(10, context),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
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

  // void _showMyBottomSheet({required BuildContext context}) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return MyBottomSheetLayout();
  //       });
  // }
}
