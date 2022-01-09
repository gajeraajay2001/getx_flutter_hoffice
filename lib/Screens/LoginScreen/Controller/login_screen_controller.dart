import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Data/ApiClient/api_client.dart';
import 'package:h_office_flutter/Models/login_model.dart';

class LoginController extends GetxController with StateMixin {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController domainController = TextEditingController();
  LoginModel loginResponse = LoginModel();

  String userName = "", password = "", domainName = "";
  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    domainController.dispose();
    super.onClose();
  }

  onClickLoginButton({VoidCallback? successCall, VoidCallback? errCall}) async {
    await ApiClient().callLogInApi(
      onSuccess: (resp) {
        onCreateAuthLoginSuccess(resp);
        if (successCall != null) {
          successCall();
        }
      },
      onError: (err) {
        onCreateAuthLoginError(err);
        if (errCall != null) {
          errCall();
        }
      },
    );
  }

  void onCreateAuthLoginSuccess(resp) {
    // loginResponse = LoginModel.fromJson(resp);
  }

  void onCreateAuthLoginError(var err) {}
}
