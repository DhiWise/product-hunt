import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red600 = fromHex('#e05031');

  static Color gray800 = fromHex('#414141');

  static Color gray900 = fromHex('#1d2124');

  static Color bluegray40033 = fromHex('#338b8f92');

  static Color red60033 = fromHex('#33e05031');

  static Color bluegray900 = fromHex('#272b2e');

  static Color indigo400 = fromHex('#4a7dd8');

  static Color black900Cc = fromHex('#cc000000');

  static Color deepOrange700 = fromHex('#da552f');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#8b8f92');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray901 = fromHex('#313538');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
