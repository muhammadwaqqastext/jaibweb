import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jaib_portal/core/helpers/routing/page_constants.dart';
import 'package:jaib_portal/core/helpers/routing/route_constants.dart';
import 'package:jaib_portal/core/resources/colours.dart';
import 'package:jaib_portal/presentation/pages/home/controller/side_menu_controller.dart';

void main() {
  Get.put(SideMenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jaib',
      initialRoute: Routes.HomePage,
      getPages: Pages.pages,
      unknownRoute: Pages.unknownPage,
      theme: ThemeData(
        scaffoldBackgroundColor: Colours.light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
