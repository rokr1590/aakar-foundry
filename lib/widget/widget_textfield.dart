// ignore_for_file: prefer_const_constructors

import 'package:aakarfoundry/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:aakarfoundry/themes/app_style.dart';
import 'package:flutter/material.dart';

enum TextfieldSize { small, large }

class WidgetTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final String? errorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTapSuffixIcon;
  final bool obscureText;
  final bool enabled;
  final TextInputType keyboardType;
  final bool isLoading;
  final TextfieldSize textfieldSize;

  const WidgetTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.isLoading = false,
    this.textfieldSize = TextfieldSize.small,
  });

  @override
  State<WidgetTextfield> createState() => _WidgetTextfieldState();
}

class _WidgetTextfieldState extends State<WidgetTextfield> {
  final TextStyle _hintTextStyle =
      AppStyle.txtPoppinRegular14(Colorselect.textFieldHintColor);
  final TextStyle _activeTextStyle =
      AppStyle.txtPoppinRegular14(Colorselect.afBlueLight);
  final TextStyle _errorTextStyle =
      AppStyle.txtPoppinsMedium12(Colorselect.afRedAccent);
  final TextStyle _labelTextStyle =
      AppStyle.txtPoppinsMedium14(Colorselect.afBlueDark);

  final Color _fillColor = Colorselect.bule200;
  final Color _cursorColor = Colorselect.afBlueLight;

  InputBorder _inactiveBorder() => InputBorder.none;
  // OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(4),
  //     borderSide: const BorderSide(color: AppColors.grey300, width: 1));
  OutlineInputBorder _activeBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colorselect.afBlueDark, width: 2));
  OutlineInputBorder _errorBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colorselect.afRedAccent, width: 1));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.labelText == null
                ? const SizedBox.shrink()
                : Text(widget.labelText as String, style: _labelTextStyle),
            const SizedBox(
              height: 2,
            ),
            Container(
              color: _fillColor,
              child: TextField(
                cursorColor: _cursorColor,
                controller: widget.controller,
                style: _activeTextStyle,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                maxLines: widget.textfieldSize == TextfieldSize.large ? 5 : 1,
                decoration: InputDecoration(
                  enabled: widget.enabled,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  hintText: widget.hintText,
                  hintStyle: _hintTextStyle,
                  prefixIcon: widget.prefixIcon != null
                      ? Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(widget.prefixIcon as IconData,
                                  size: 20, color: Colorselect.afBlueDark),
                              const SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        )
                      : null,
                  suffixIcon: widget.isLoading
                      ? const Padding(
                          padding: EdgeInsets.all(14),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: Colorselect.afBlueDark,
                            ),
                          ),
                        )
                      : widget.suffixIcon != null
                          ? Padding(
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: widget.onTapSuffixIcon,
                                    child: Icon(widget.suffixIcon as IconData,
                                        size: 20,
                                        color: Colorselect.afRedAccent),
                                  ),
                                ],
                              ),
                            )
                          : null,
                  border: _activeBorder(),
                  enabledBorder: _inactiveBorder(),
                  disabledBorder: _inactiveBorder(),
                  errorBorder: _errorBorder(),
                  focusedBorder: _activeBorder(),
                ),
              ),
            )
          ],
        ),
        widget.errorText == null
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(left: 4, top: 4),
                child: Text(
                  widget.errorText as String,
                  style: _errorTextStyle,
                ),
              ),
      ],
    );
  }
}
