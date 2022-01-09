import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Constants/constant.dart';
import 'package:h_office_flutter/Constants/imageConstant.dart';
import 'package:h_office_flutter/Routes/app_routes.dart';
import 'package:h_office_flutter/Screens/ContactScreen/Controller/contact_screen_controller.dart';
import 'package:h_office_flutter/Screens/LoginScreen/Controller/login_screen_controller.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: appTheme.primaryTheme,
            image: const DecorationImage(
                image: AssetImage(loginBg), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: controller.form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(logo)),
                  SizedBox(
                    height: getSize(80, context),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: getSize(20, context)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          validator: (val) {
                            if (val!.isEmpty || val == " ") {
                              return "User name cannot be empty.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            controller.userName = val.toString().trim();
                            Get.appUpdate();
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            labelText: "User Name",
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: getSize(2, context))),
                          ),
                        ),
                        SizedBox(
                          height: getSize(15, context),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          validator: (val) {
                            if (val!.isEmpty || val == " ") {
                              return "Password cannot be empty.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            controller.password = val.toString().trim();
                            Get.appUpdate();
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: getSize(2, context))),
                          ),
                        ),
                        SizedBox(
                          height: getSize(15, context),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          validator: (val) {
                            if (val!.isEmpty || val == " ") {
                              return "Domain Name cannot be empty.";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            controller.domainName = val.toString().trim();
                            BaseUrl.BASEURL =
                                controller.domainName.toString().trim();
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.language,
                              color: Colors.white,
                            ),
                            labelText: "Domain Name",
                            labelStyle: const TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: getSize(2, context))),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: getSize(2, context))),
                          ),
                        ),
                        SizedBox(
                          height: getSize(30, context),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (controller.form.currentState!.validate()) {
                              controller.form.currentState!.save();
                              controller.onClickLoginButton(
                                successCall: _onCreateAuthloginSuccess,
                                errCall: _onCreateAuthloginError,
                              );

                              // Get.toNamed(AppRoutes.homeScreen);
                            }
                          },
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: getFontSize(25, context)),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      getSize(10, context))),
                              padding: EdgeInsets.only(
                                  right: getSize(110, context),
                                  left: getSize(110, context),
                                  top: getSize(5, context),
                                  bottom: getSize(5, context)),
                              primary: Colors.black87),
                        ),
                        SizedBox(
                          height: getSize(100, context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  void _onCreateAuthloginSuccess() {
    print("YESSsssssssssss........");
    // controller.sharedPreferences
    //     .setString("UserName", controller.userNameController.text.toString());
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  _onCreateAuthloginError() {
    print("Eroorrrrrrr........");
  }
}
