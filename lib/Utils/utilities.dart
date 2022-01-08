import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:h_office_flutter/Theme/theme_helper.dart';
import 'package:h_office_flutter/Utils/math_utils.dart';

Container getFunnelContainer(
    {required BuildContext context,
    required double height,
    required double width,
    required String image,
    required String text}) {
  return Container(
    height: getSize(height, context),
    width: getSize(width, context),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
      ),
    ),
    alignment: Alignment.center,
    child: Text(text),
  );
}

getTextItems({required String title, required String text}) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        TextSpan(
          text: text,
          style: const TextStyle(),
        ),
      ],
    ),
  );
}

bool isNullEmptyOrFalse(dynamic o) {
  if (o is Map<String, dynamic> || o is List<dynamic>) {
    return o == null || o.length == 0;
  }
  return o == null || false == o || "" == o;
}

showToast(
  BuildContext context,
  String msg, {
  num timer = 3000,
}) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    padding: EdgeInsets.symmetric(
        horizontal: getSize(16, context), vertical: getSize(16, context)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        getSize(5, context),
      ),
      color: Colors.black.withOpacity(0.7),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            msg,
            style: const TextStyle().copyWith(
              color: Colors.white,
              fontFamily: 'CerebriSans',
              fontSize: getSize(16, context),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
  fToast.showToast(
    child: toast,
    toastDuration: const Duration(seconds: 2),
  );
}
