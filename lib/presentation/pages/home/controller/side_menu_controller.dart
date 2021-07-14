import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jaib_portal/core/enums/side_menu_items/side_menu_items_enums.dart';
import 'package:jaib_portal/core/helpers/constants/side_menu_constants.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/core/helpers/extensions/extension_imports.dart';

class SideMenuController extends GetxController {
  var activeItem = SideMenuItemEnums.Home.obs;
  var hoverItem = SideMenuItemEnums.Unknown.obs;

  changeActiveItemTo({required SideMenuItemEnums menuItem}) {
    activeItem.value = menuItem;
  }

  onHover({required SideMenuItemEnums menuItem}) {
    if (!isActive(menuItem: menuItem)) {
      hoverItem.value = menuItem;
    }
  }

  bool isActive({required SideMenuItemEnums menuItem}) => activeItem.value == menuItem;

  bool isHovering({required SideMenuItemEnums menuItem}) => hoverItem.value == menuItem;

  Widget getIconForItem({required SideMenuItemEnums menuItem}) {
    return _customIcon(menuItem: menuItem);
  }

  Widget _customIcon({required SideMenuItemEnums menuItem}) {
    if (isActive(menuItem: menuItem)) {
      return Image.asset(
        menuItem.getMenuItemImage(),
        height: SideMenuConstants.sideMenuItemImageHeight,
        width: SideMenuConstants.sideMenuItemImageWidth,
        color: Colours.green,
      );
    }
    return Image.asset(
      menuItem.getMenuItemImage(),
      color: isHovering(menuItem: menuItem) ? Colours.black : Colours.green,
      height: SideMenuConstants.sideMenuItemImageHeight,
      width: SideMenuConstants.sideMenuItemImageWidth,
    );
  }
}
