import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaib_portal/core/enums/side_menu_items/side_menu_items_enums.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/presentation/pages/home/controller/side_menu_controller.dart';
import 'package:jaib_portal/presentation/widgets/custom_text.dart';
import 'package:jaib_portal/core/helpers/extensions/extension_imports.dart';

class SideMenuItem extends StatelessWidget {
  final SideMenuItemEnums itemName;
  final VoidCallback onTap;
  final menuController = Get.find<SideMenuController>();
  SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (isOnHover) {
        isOnHover ? menuController.onHover(menuItem: itemName) : menuController.onHover(menuItem: SideMenuItemEnums.Unknown);
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovering(menuItem: itemName) ? Colours.greyColor.withOpacity(.1) : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                  visible: menuController.isHovering(menuItem: itemName) || menuController.isActive(menuItem: itemName),
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: Container(
                    height: 35,
                    width: 2,
                    color: Colours.green,
                  )),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: menuController.getIconForItem(menuItem: itemName),
              ),
              if (menuController.isActive(menuItem: itemName))
                CustomText(
                  text: itemName.getMenuItem(),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  textColor: Colours.dark,
                )
              else
                CustomText(
                  text: itemName.getMenuItem(),
                  fontSize: 12,
                  textColor: menuController.isHovering(menuItem: itemName) ? Colours.dark : Colours.greyColor,
                )
            ],
          ),
        );
      }),
    );
  }
}
