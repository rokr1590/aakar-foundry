import 'dart:ui';

import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:aakarfoundry/widget/widget_buttons.dart';
import 'package:aakarfoundry/widget/widget_textfield.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(18, 42, 51, 1),
          Color.fromRGBO(0, 18, 43, 0.1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(54, 66, 83, 0.86),
            Color.fromRGBO(0, 18, 43, 0.1),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(54, 66, 83, 1),
                Color.fromRGBO(0, 18, 43, 0.1),
              ], begin: Alignment.topRight, end: Alignment.bottomRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Aakar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0.64,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Foundry',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            height: 0.40,
                            letterSpacing: 4),
                      ),
                      SizedBox(
                        height: getVerticalSize(40),
                      ),
                      Image.asset(
                        'assets/images/login_page_vector.png',
                        width: 256,
                      ),
                      SizedBox(
                        height: getVerticalSize(12),
                      )
                    ],
                  )),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getHorizontalSize(20),
                      vertical: getVerticalSize(40),
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colorselect.bgLight,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colorselect.primaryColor,
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        const WidgetTextfield(
                          hinttext: 'Enter username or email',
                          topString: 'Enter Username/Email',
                          prefixicon: BootstrapIcons.person_fill,
                          suffixicon: BootstrapIcons.x,
                        ),
                        SizedBox(
                          height: getVerticalSize(8),
                        ),
                        const WidgetTextfield(
                          hinttext: 'Enter Password',
                          topString: 'Enter password',
                          prefixicon: BootstrapIcons.lock_fill,
                          suffixicon: BootstrapIcons.eye,
                        ),
                        SizedBox(
                          height: getVerticalSize(20),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: WidgetButton(),
                        ),
                        SizedBox(
                          height: getVerticalSize(60),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
