import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Screens/AddProspectScreen/Controller/add_prospect_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

class AddProspectScreen extends GetWidget<AddProspectController> {
  const AddProspectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appTheme.themeBackground,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Add Prospect",
            style: TextStyle(
                color: Colors.white, fontSize: getFontSize(25, context)),
          ),
        ),
        body: (controller.contentTitleList.isNotEmpty &&
                controller.countryList.isNotEmpty)
            ? Center(
                child: CircularProgressIndicator(
                  color: appTheme.primaryTheme,
                ),
              )
            : Obx(
                () => ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: getSize(20, context)),
                  children: [
                    SizedBox(
                      height: getSize(30, context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getSize(20, context),
                          bottom: getSize(30, context)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: getSize(45, context),
                            backgroundColor: Colors.transparent,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(prospectUser),
                            ),
                          ),
                          SizedBox(
                            width: getSize(30, context),
                          ),
                          Obx(
                            () => PopupMenuButton(
                              initialValue: controller.contentTitleIndex,
                              itemBuilder: (context) {
                                return List.generate(
                                    controller.contentTitleList.length,
                                    (index) {
                                  return PopupMenuItem(
                                    child: Text(controller
                                        .contentTitleList[index]
                                        .toString()),
                                    value: index,
                                  );
                                });
                              },
                              onSelected: (index) {
                                controller.contentTitle.value =
                                    index.toString();
                                // controller.contentTitleIndex.value = index.toString();
                              },
                              offset: const Offset(0, 40),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: getSize(30, context),
                                    right: getSize(10, context),
                                    top: getSize(10, context),
                                    bottom: getSize(10, context)),
                                height: getSize(45, context),
                                width: getSize(155, context),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.contentTitle.value,
                                      style: TextStyle(
                                          fontSize: getFontSize(20, context)),
                                    ),
                                    Image(
                                      image: const AssetImage(
                                          prospectDropDownIcon),
                                      width: getSize(50, context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    getTextField(
                        hintText: "Contact Name*",
                        icon: prospectPerson,
                        context: context),
                    getTextField(
                        hintText: "Company Name*",
                        icon: prospectCompany,
                        context: context),
                    getTextField(
                        hintText: "Mobile Number*",
                        icon: prospectMOB,
                        context: context),
                    getTextField(
                        hintText: "E-Mail",
                        icon: prospectEmail,
                        context: context),
                    getTextField(
                        hintText: "Address",
                        icon: prospectAddress,
                        context: context),
                    getTextField(
                        hintText: "Zop/Pincode",
                        icon: prospectPinCode,
                        context: context),
                    getTextField(
                        hintText: "Office Number*",
                        icon: prospectOffice,
                        context: context),
                    SizedBox(
                      height: getSize(10, context),
                    ),
                    InkWell(
                      onTap: () {
                        controller.moreInfoVisible.value =
                            !controller.moreInfoVisible.value;
                      },
                      child: Container(
                        height: getSize(50, context),
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Text(
                          (!controller.moreInfoVisible.value)
                              ? "Add more info"
                              : "Add less info",
                          style: TextStyle(
                              fontSize: getFontSize(18, context),
                              color: appTheme.primaryTheme),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getSize(15, context),
                    ),
                    Visibility(
                      visible: controller.moreInfoVisible.value,
                      child: Column(
                        children: [
                          getTextField(
                              hintText: "Other Number",
                              icon: prospectPhone,
                              context: context),
                          getTextField(
                              hintText: "Home Number",
                              icon: prospectTelephone,
                              context: context),
                          getTextField(
                              hintText: "Website",
                              icon: prospectWeb,
                              context: context),
                          getTextField(
                              hintText: "Linked ID",
                              icon: prospectLinkedIN,
                              context: context),
                          getDropDownSelection(
                              title: "Select Source", context: context),
                          getDropDownSelection(
                              title: "Select Contact Type", context: context),
                          PopupMenuButton(
                            initialValue: controller.countryIndex.value,
                            itemBuilder: (context) {
                              return List.generate(
                                  controller.countryList.length, (index) {
                                return PopupMenuItem(
                                  child: Text(
                                      controller.countryList[index].toString()),
                                  value: index,
                                );
                              });
                            },
                            onSelected: (int index) {
                              controller.country.value =
                                  controller.countryList[index];
                              controller.countryIndex.value = index;
                            },
                            offset: Offset(0, 40),
                            child: getDropDownSelection(
                                title: controller.country.value,
                                context: context),
                          ),
                          getDropDownSelection(
                              title: "Select State", context: context),
                          getDropDownSelection(
                              title: "Select City", context: context),
                          getDropDownSelection(
                              title: "Select Industry", context: context),
                        ],
                      ),
                    ),
                    Text(
                      "Select key account manager for this contact:",
                      style: TextStyle(
                          fontSize: getFontSize(20, context),
                          color: appTheme.primaryTheme),
                    ),
                    SizedBox(
                      height: getSize(10, context),
                    ),
                    getDropDownSelection(
                        title: "Laxman Parmar", context: context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: controller.checkBoxValue.value,
                            onChanged: (val) {
                              controller.checkBoxValue.value = val!;
                            }),
                        Text(
                          "also save in phone contacts",
                          style: TextStyle(
                            fontSize: getFontSize(18, context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getSize(15, context),
                    ),
                    Container(
                      height: getSize(58, context),
                      margin: EdgeInsets.symmetric(
                          horizontal: getSize(60, context)),
                      decoration: BoxDecoration(
                        color: appTheme.primaryTheme,
                        borderRadius:
                            BorderRadius.circular(getSize(70, context)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getFontSize(20, context)),
                      ),
                    ),
                    SizedBox(
                      height: getSize(30, context),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  getDropDownSelection({
    required String title,
    required BuildContext context,
  }) {
    return Container(
      height: getSize(45, context),
      margin: EdgeInsets.only(bottom: getSize(10, context)),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(left: getSize(35, context)),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: getFontSize(20, context)),
              )),
          Image(
            image: const AssetImage(prospectDropDownIcon),
            width: getSize(50, context),
          ),
        ],
      ),
    );
  }

  getTextField(
      {required String hintText,
      required String icon,
      required BuildContext context}) {
    return Container(
      height: getSize(50, context),
      margin: EdgeInsets.only(bottom: getSize(10, context)),
      child: TextField(
        controller: controller.contactNameController,
        cursorColor: appTheme.primaryTheme,
        cursorHeight: getSize(25, context),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey.shade500, fontSize: getFontSize(20, context)),
          contentPadding: EdgeInsets.only(
              top: getSize(15, context), left: getSize(30, context)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getSize(35, context)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getSize(35, context)),
          ),
          suffixIconConstraints:
              const BoxConstraints(minHeight: 15, minWidth: 15),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: getSize(20, context)),
            child: Image(
              height: 27,
              image: AssetImage(icon),
            ),
          ),
        ),
      ),
    );
  }
}
