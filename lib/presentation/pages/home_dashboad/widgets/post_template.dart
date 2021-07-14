import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';

class PostTemplate extends StatelessWidget {
  const PostTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 240,
      decoration: BoxDecoration(
        color: Colours.green,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
