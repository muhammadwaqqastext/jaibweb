import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/resources/images.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final VoidCallback onPressed;
  const CustomButton({Key? key, this.width, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 44,
          width: width ?? 150,
          decoration: BoxDecoration(color: Colours.green, borderRadius: BorderRadius.circular(22)),
          child: MaterialButton(
            onPressed: onPressed,
            child: Image.asset(
              Images.forwardArrow,
              width: 30,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
