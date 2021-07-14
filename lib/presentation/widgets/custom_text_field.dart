import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/app_theme.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/presentation/widgets/custom_text.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  final Color lineColor;
  final Color activeLineColor;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.label,
    required this.hint,
    this.lineColor = Colours.greyColor,
    this.activeLineColor = Colors.green,
    this.hintTextStyle,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: label,
            fontSize: 20,
            textColor: Colours.green,
          ),
          TextField(
            style: textStyle ?? AppTheme.customTextFieldStyle,
            cursorColor: Colours.green,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: hintTextStyle ?? AppTheme.customTextFieldHintStyle,
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lineColor, width: 1)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: activeLineColor, width: 1))),
          ),
        ],
      ),
    );
  }
}
