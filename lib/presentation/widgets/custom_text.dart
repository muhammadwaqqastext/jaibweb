import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/resources/fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final String? fontFamily;
  final FontWeight? fontWeight;
  const CustomText({Key? key, required this.text, this.fontSize, this.textColor, this.fontFamily, this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? Fonts.RobotoLight,
        fontSize: fontSize ?? 14,
        color: textColor ?? Colours.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
