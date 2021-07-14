import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/presentation/pages/home/widgets/side_menu/side_menu.dart';
import 'package:jaib_portal/presentation/pages/home_dashboad/widgets/post_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colours.pageBackgroundColor,
        child: Row(
          children: [
            Container(
              width: 180,
              child: SideMenu(),
            ),
            PostTemplate(),
          ],
        ),
      ),
    );
  }
}
