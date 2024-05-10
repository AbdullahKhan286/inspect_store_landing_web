import 'package:flutter/material.dart';
import 'package:inspectstore_landing_web/utils/routes/routes_name.dart';
import 'package:inspectstore_landing_web/view/landing_page/landing_page.dart';
// ignore: depend_on_referenced_packages

class Routes {
  //Used For GetX Route

  //Used For Material Page Route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LandingPageScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
