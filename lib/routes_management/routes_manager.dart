import 'package:flutter/material.dart';
import 'package:food_demo/pages/home/home_screen.dart';
import 'package:food_demo/pages/login/login_screen.dart';
import 'package:food_demo/pages/not_found_page.dart';
import 'package:food_demo/pages/splash/splash_screen.dart';

class RoutesManager {
  static GlobalKey<NavigatorState> globalNavigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case SplashScreen.routeName:
        page = const SplashScreen();
        break;
      case LoginScreen.routeName:
        page = const LoginScreen();
        break;
      case HomeScreen.routeName:
        page = const HomeScreen();
        break;

      default:
        page = const NotFoundPage();
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
