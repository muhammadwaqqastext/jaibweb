import 'package:get/get.dart';
import 'package:jaib_portal/core/helpers/routing/route_constants.dart';
import 'package:jaib_portal/presentation/pages/404/page_not_found.dart';
import 'package:jaib_portal/presentation/pages/home/home_page.dart';
import 'package:jaib_portal/presentation/pages/login/login_page.dart';

class Pages {
  Pages._();

  static final unknownPage = GetPage(name: Routes.UnKnownPage, page: () => PageNotFound());
  static final pages = [GetPage(name: Routes.LoginPage, page: () => LoginPage()), GetPage(name: Routes.HomePage, page: () => HomePage())];
}
