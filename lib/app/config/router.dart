import 'package:flutter/material.dart';
import 'package:xepa/app/feature/home/ui/home_page.dart';
import 'package:xepa/app/feature/state/inner_page.dart';

class MyRouter {
  const MyRouter();

  static const String welcomeRoute = '/welcome';
  static const String loginRoute = '/login';
  static const String innerRoute = '/inner';

  static get outter => (RouteSettings settings) {
    switch (settings.name) {
      case innerRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => InnerPage(),
        );
      default:
        return defaultRoute();
    }
  };

  static const String menuRoute = '/welcome';
  static const String homeRoute = '/home';

  static get inner => (RouteSettings settings) {
        switch (settings.name) {
          case homeRoute:
            return MaterialPageRoute(
              settings: settings,
              builder: (_) => HomePage(),
            );
          default:
            return defaultRoute();
        }
      };

  static MaterialPageRoute defaultRoute() => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('No route defined'),
          ),
        ),
      );
}
