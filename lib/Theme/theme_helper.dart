import 'package:flutter/material.dart';

class BaseTheme {
  Color get primaryTheme => fromHex('#137F43');
  Color get themeBackground => fromHex('#393939');
  Color get statusBarColor => fromHex('#393939');
  Color get canvasColor => fromHex('#e9ecef');
  Color get lightGreenColor => fromHex('#81B214');
}

BaseTheme get appTheme => BaseTheme();

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
