import 'dart:ui';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';

class AppStyle{
 static TextStyle txtPoppinsBold64bgDark = TextStyle(
  color: Colorselect.bgDark,
  fontSize:getFontSize(64),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
 );

 static TextStyle txtPoppinsBold28bgDark = TextStyle(
  color: Colorselect.bgDark,
  fontSize:getFontSize(28),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
 );
}