import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Screens/ContactScreen/Controller/contact_screen_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';
import 'package:h_office_flutter/Utils/utilities.dart';

class ContactScreen extends GetWidget<ContactScreenController> {
  ContactScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appTheme.themeBackground,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage(hLogo2),
                ),
              ),
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.white, fontSize: getFontSize(18, context)),
            ),
            bottom: TabBar(
              indicatorColor: appTheme.primaryTheme,
              tabs: const [
                Tab(
                  child: Text("CONTACTS"),
                ),
                Tab(
                  child: Text("RAW CONTACTS"),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.searchToggle();
              print(controller.searchVisible);
              Get.appUpdate();

              if (controller.radioVisible.isTrue) {
                controller.radioVisible.value = false;
              }
              Get.appUpdate();
            },
            child: const Icon(Icons.search),
            heroTag: "AS1234",
          ),
          body: TabBarView(
            children: [
              getTabBody(context: context),
              getTabBody(context: context),
            ],
          ),
        ),
      ),
    );
  }

  getTabBody({required BuildContext context}) {
    return Column(
      children: [
        Obx(
          () => Visibility(
            visible: controller.searchVisible.isTrue,
            child: InkWell(
              onTap: () {
                controller.radioVisible.value = true;
                Get.appUpdate();
              },
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: getSize(10, context),
                          horizontal: getSize(10, context)),
                      height: getSize(55, context),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          getSize(5, context),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getSize(10, context)),
                        child: TextFormField(
                          onTap: () {
                            if (controller.radioVisible.isFalse) {
                              controller.radioVisible.value = true;
                            } else {
                              FocusManager.instance.primaryFocus?.unfocus();
                              controller.radioVisible.value = false;
                            }
                            Get.appUpdate();
                          },
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            hintText: (controller.groupValue.value == "Name")
                                ? "Type Name"
                                : "Type Mobile No",
                            prefixIcon: Icon(
                              Icons.search,
                              color: appTheme.themeBackground,
                            ),
                            suffixIcon: (controller.radioVisible.isFalse)
                                ? const SizedBox()
                                : Icon(
                                    Icons.close,
                                    color: appTheme.themeBackground,
                                  ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: appTheme.primaryTheme, width: 2.0),
                            ),
                          ),
                          cursorColor: appTheme.primaryTheme,
                          cursorHeight: getSize(25, context),
                        ),
                      )),
                  Obx(
                    () => Visibility(
                        visible: controller.radioVisible.isTrue,
                        child: Row(
                          children: [
                            Radio(
                                value: "Name",
                                groupValue: controller.groupValue.value,
                                onChanged: (val) {
                                  controller.groupValue.value = val.toString();
                                  print(controller.groupValue);
                                }),
                            const Text("Name"),
                            Radio(
                                value: "Number",
                                groupValue: controller.groupValue.value,
                                onChanged: (val) {
                                  controller.groupValue.value = val.toString();
                                  print(controller.groupValue);
                                }),
                            const Text("Mobile No"),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "123456789",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: getFontSize(25, context)),
                    ),
                    SizedBox(
                      height: getSize(10, context),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getSize(5, context),
                        ),
                        CircleAvatar(
                          radius: getSize(35, context),
                          backgroundColor: appTheme.lightGreenColor,
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: getFontSize(25, context)),
                          ),
                        ),
                        SizedBox(
                          width: getSize(10, context),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTextItems(title: "Mobile:", text: " 7598452526"),
                            SizedBox(
                              height: getSize(2, context),
                            ),
                            getTextItems(title: "E-Mail:", text: " N/A"),
                            SizedBox(
                              height: getSize(2, context),
                            ),
                            getTextItems(title: "Acc.Manager:", text: " N/A"),
                            SizedBox(
                              height: getSize(2, context),
                            ),
                            getTextItems(title: "CreatedBy:", text: " N/A"),
                            SizedBox(
                              height: getSize(2, context),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getSize(15, context),
                    ),
                    Divider(
                      height: getSize(1, context),
                      color: appTheme.themeBackground,
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
