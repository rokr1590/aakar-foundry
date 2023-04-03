import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle styleHeading1(Color color) => TextStyle(
        color: color,
        fontSize: getFontSize(64),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      );

  static TextStyle txtPoppinsBold28bgDark = TextStyle(
    color: Colorselect.bgDark,
    fontSize: getFontSize(28),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleHeading3(Color color) => TextStyle(
        color: color,
        fontSize: 36,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        // letterSpacing: 1,

        height: 54,
      );
}
