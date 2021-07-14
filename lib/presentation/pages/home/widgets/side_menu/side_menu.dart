import 'package:flutter/material.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/resources/images.dart';
import 'package:jaib_portal/presentation/pages/home/widgets/side_menu/model/menu_item.dart';
import 'package:jaib_portal/presentation/pages/home/widgets/side_menu/side_menu_item.dart';
import 'package:jaib_portal/core/helpers/extensions/extension_imports.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colours.white,
      child: Column(
        children: [
          Image.asset(
            Images.jaib_logo_png,
            height: 50,
            width: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: sideMenuItems.map((item) => SideMenuItem(itemName: item.menuItem, onTap: () {})).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
