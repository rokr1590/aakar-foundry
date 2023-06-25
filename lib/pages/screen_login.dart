import 'dart:ui';

import 'package:aakarfoundry/themes/app_style.dart';
import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:aakarfoundry/utils/size_utils.dart';
import 'package:aakarfoundry/widget/widget_buttons.dart';
import 'package:aakarfoundry/widget/widget_textfield.dart';
import 'package:aakarfoundry/widget/widget_top_navigation_bar.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  late final TextEditingController _controllerUsername;
  late final TextEditingController _controllerPassword;

  @override
  void initState() {
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(30),
                    // bottom: MediaQuery.of(context).size.height * 1 / 2,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login_bg.png'),
                        fit: BoxFit.fitWidth),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff8bcdf9), Color(0xff044471)],
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/af_logo.png',
                          width: 256,
                        ),
                        Image.asset(
                          'assets/images/login_page_vector.png',
                          width: 256,
                        ),
                      ])),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getHorizontalSize(20),
                    vertical: getVerticalSize(40),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1 / 2,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',
                          style: AppStyle.txtPoppinsBold36(
                              Colorselect.afBlueDark)),
                      SizedBox(
                        height: getVerticalSize(16),
                      ),
                      WidgetTextfield(
                        controller: _controllerUsername,
                        hintText: 'Enter username or email',
                        labelText: 'Enter Username/Email',
                        prefixIcon: BootstrapIcons.person_fill,
                        suffixIcon: BootstrapIcons.x,
                      ),
                      SizedBox(
                        height: getVerticalSize(8),
                      ),
                      WidgetTextfield(
                        controller: _controllerPassword,
                        hintText: 'Password',
                        labelText: 'Enter password',
                        prefixIcon: BootstrapIcons.lock_fill,
                        suffixIcon: BootstrapIcons.eye,
                      ),
                      SizedBox(
                        height: getVerticalSize(20),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: WidgetButton(
                          buttonText: 'Login',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TopNavBar(),
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
