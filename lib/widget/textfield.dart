// ignore_for_file: prefer_const_constructors

import '../utils/color_constant.dart';
import 'package:flutter/material.dart';

import '../utils/typography.dart';

class textfield extends StatefulWidget {
  final IconData? prefixicon;
  final IconData? suffixicon;
  final String hinttext;
  final String topString;
  final String bottomString;
  const textfield(
      {super.key,
      this.prefixicon,
      this.suffixicon,
      required this.hinttext,
      required this.topString,
      this.bottomString = ""});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: 2.0),
          child: Text(
            widget.topString,
            style: TextStyles.Label4(Colorselect.primaryColor),
          ),
        ),
        SizedBox(height: 2.0),
        SizedBox(
          width: 320,
          height: 44,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              prefixIcon: widget.prefixicon != null
                  ? Padding(
                      padding: EdgeInsets.fromLTRB(16, 13, 8, 13),
                      child: Icon(widget.prefixicon, size: 18.0))
                  : null,
              hintText: widget.hinttext,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              hintStyle: TextStyle(
                fontSize: 12,
                color: Colorselect.secondaryColor,
                fontWeight: FontWeight.normal,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 16, 12),
                child: Icon(
                  widget.suffixicon,
                  size: 20,
                ),
              ),
              fillColor: Colorselect.bgDark,
              prefixIconColor: Colors.black,
              suffixIconColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 1.0),
        Padding(
          padding: EdgeInsets.only(left: 2.0),
          child: widget.bottomString != ""
              ? Text(widget.bottomString,
                  style: TextStyles.Label6(
                    Colorselect.HelperRed,

                    // fontSize: 11.0,
                    // fontWeight: FontWeight.w500,
                  ))
              : null,
        ),
      ]),
    );
  }
}
