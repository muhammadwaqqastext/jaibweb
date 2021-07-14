import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/resources/fonts.dart';

class AppTheme {
  AppTheme._();
  static final customTextFieldStyle = TextStyle(
    fontSize: 16,
    fontFamily: Fonts.RobotoLight,
    color: Colours.black,
  );
  static final customTextFieldHintStyle = TextStyle(
    fontSize: 14,
    fontFamily: Fonts.RobotoLight,
    color: Colours.greyColor,
  );
  static final customTextFieldLabelStyle = TextStyle(
    fontSize: 20,
    fontFamily: Fonts.RobotoLight,
    color: Colours.black,
  );
  static final customTextStyle = TextStyle(
    fontSize: 16,
    fontFamily: Fonts.RobotoLight,
    color: Colours.black,
  );
}
