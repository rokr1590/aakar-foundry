import 'package:aakarfoundry/pages/screen_login.dart';
import 'package:aakarfoundry/widget/widget_buttons.dart';
import 'package:aakarfoundry/widget/widget_textfield.dart';
import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: SafeArea(
          child: ScreenLogin(),
        ));
  }
}
