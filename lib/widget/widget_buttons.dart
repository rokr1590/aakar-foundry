import 'dart:ffi';

import 'package:aakarfoundry/widget/widget_top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:aakarfoundry/utils/color_constant.dart';

enum ButtonSize { large, small }

enum Type { primary, secondary, outlined }

class WidgetButton extends StatelessWidget {
  final ButtonSize size;
  final Type type;

  const WidgetButton({
    super.key,
    this.type = Type.primary,
    this.size = ButtonSize.large,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
        Navigator.push(context,MaterialPageRoute(builder: (context) => TopNavBar()));
      },
      child: Container(
          padding: size == ButtonSize.large
              ? EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0)
              : EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: type == Type.outlined ? Border.all(width: 2.0) : null,
            color: getColor(type),
          ),
          child: Text(
            "Login",
            style: TextStyle(
              color: type == Type.primary
                  ? Colorselect.afBlueLight
                  : Colorselect.afBlueDark,
              fontSize: size == ButtonSize.large ? 16.0 : 14.0,
              fontWeight:
                  size == ButtonSize.large ? FontWeight.bold : FontWeight.w500,
            ),
          )),
    );
  }
}

Color getColor(Type type) {
  if (type == Type.primary) {
    return Colorselect.afBlueDark;
  } else if (type == Type.secondary) {
    return Colorselect.afBlueLight;
  } else {
    return Colors.white;
  }
}
