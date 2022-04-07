import 'package:firebase_auth_bloc/screens/screens.dart';
import 'package:firebase_auth_bloc/utils/error_route.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case IntroScreen.routeName:
        return IntroScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const ErrorRoutes(),
    );
  }
}
