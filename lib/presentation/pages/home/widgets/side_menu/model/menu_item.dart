import 'package:jaib_portal/core/enums/side_menu_items/side_menu_items_enums.dart';

class MenuItem {
  final SideMenuItemEnums menuItem;
  final String routeName;

  MenuItem({required this.menuItem, required this.routeName});
}

List<MenuItem> sideMenuItems = [
  MenuItem(menuItem: SideMenuItemEnums.Home, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.User, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.Interests, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.Channels, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.Languages, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.City, routeName: 'Home'),
  MenuItem(menuItem: SideMenuItemEnums.Country, routeName: 'Home'),
];
