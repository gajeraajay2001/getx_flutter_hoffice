import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Utils/progress_dialog_utils.dart';

class ApiClient extends GetConnect {
  Connectivity connectivity = Connectivity();

  callLogInApi({
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    Map<String, String> headers = {"Content-Type": "multipart/form-data"};
    ProgressDialogUtils.showProgressDialog();
    try {
      final form = FormData({'PHPTOKEN': '6ih8m3fgeitnf7qc7ffnls5tp3'});
      final response = await post(
          "https://hofficedemo1.ondemandcrm.co/AppRequestAPI/getCountryList",
          form,
          contentType: "multipart/form-data",
          headers: headers);
      print(response.body);
      return response;
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
      Fluttertoast.showToast(msg: "$error");
    }
  }
}
