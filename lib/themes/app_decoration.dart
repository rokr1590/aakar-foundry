import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';

class AppDecoration {
  static BoxDecoration get fillbgDark => BoxDecoration(
    color: Colorselect.bgDark
  );

  static BoxDecoration get fillbgLight => BoxDecoration(
    color: Colorselect.bgLight
  );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 =BorderRadius.circular(
    getHorizontalSize(
      16
    )
  );
}