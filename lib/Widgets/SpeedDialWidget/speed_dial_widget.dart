import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Routes/app_routes.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:h_office_flutter/Widgets/BottomSheetWidget/bottom_sheet_widget.dart';
import 'package:h_office_flutter/Widgets/SpeedDialWidget/Controller/speed_dial_controller.dart';

class SpeedDialWidget extends GetWidget<SpeedDialController> {
  SpeedDialWidget(
      {required this.speedDialChildOne,
      required this.speedDialChildTwo,
      required this.speedDialChildThree});
  List<dynamic> speedDialChildOne;
  List<dynamic> speedDialChildTwo;
  List<dynamic> speedDialChildThree;
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      heroTag: "a1",
      activeIcon: Icons.close,
      icon: Icons.add,
      iconTheme: IconThemeData(size: getSize(38, context)),
      children: [
        SpeedDialChild(
          child: Image(
            image: AssetImage(speedDialChildOne[0]),
            height: speedDialChildOne[2],
          ),
          backgroundColor: appTheme.primaryTheme,
          onTap: () {
            Get.bottomSheet(
              BottomSheetWidget(),
            );
          },
          label: speedDialChildOne[1],
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Image(
            image: AssetImage(speedDialChildTwo[0]),
            height: speedDialChildTwo[2],
          ),
          backgroundColor: appTheme.primaryTheme,
          onTap: () => Get.toNamed(AppRoutes.addProspectScreen),
          label: speedDialChildTwo[1],
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Image(
            image: AssetImage(speedDialChildThree[0]),
            height: speedDialChildThree[2],
          ),
          backgroundColor: appTheme.primaryTheme,
          onTap: () {},
          label: speedDialChildThree[1],
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }
}
