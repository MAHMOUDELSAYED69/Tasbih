import 'package:flutter/material.dart';

import '../utils/constants/routes.dart';
import '../views/screens/home.dart';
import '../views/screens/splash.dart';

abstract class AppRouter {
  const AppRouter._();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.initialRoute:
        return _materialPageRoute(const SplashScreen());
      case RouteManager.home:
        return _materialPageRoute(const HomeScreen());

      default:
        return null;
    }
  }

  static _materialPageRoute(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }
}
