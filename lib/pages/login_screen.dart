import 'dart:ui';

import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
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
                children: [
                  Expanded(child: Container()),
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
