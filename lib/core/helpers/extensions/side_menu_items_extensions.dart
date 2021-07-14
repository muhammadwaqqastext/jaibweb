import 'package:jaib_portal/core/enums/side_menu_items/side_menu_items_enums.dart';
import 'package:jaib_portal/core/resources/images.dart';

extension sideMenuItemExt on SideMenuItemEnums {
  String getMenuItem() {
    if (this == SideMenuItemEnums.Home) {
      return 'HOME';
    } else if (this == SideMenuItemEnums.User) {
      return 'USER';
    } else if (this == SideMenuItemEnums.Channels) {
      return 'CHANNELS';
    } else if (this == SideMenuItemEnums.Interests) {
      return 'INTERESTS';
    } else if (this == SideMenuItemEnums.City) {
      return 'CITY';
    } else if (this == SideMenuItemEnums.Country) {
      return 'COUNTRY';
    } else if (this == SideMenuItemEnums.Languages) {
      return 'LANGUAGES';
    } else {
      return 'Unknown';
    }
  }

  String getMenuItemImage() {
    if (this == SideMenuItemEnums.Home) {
      return Images.home;
    } else if (this == SideMenuItemEnums.User) {
      return Images.user;
    } else if (this == SideMenuItemEnums.Channels) {
      return Images.channel;
    } else if (this == SideMenuItemEnums.Interests) {
      return Images.interest;
    } else if (this == SideMenuItemEnums.City) {
      return Images.city;
    } else if (this == SideMenuItemEnums.Country) {
      return Images.country;
    } else if (this == SideMenuItemEnums.Languages) {
      return Images.language;
    } else {
      return 'Unknown';
    }
  }
}
