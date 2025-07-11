import 'package:flutter/material.dart';
import '../models/drill.dart';
import 'route_names.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey = 
      GlobalKey<NavigatorState>();

  static BuildContext? get context => navigatorKey.currentContext;

  static Future<dynamic> navigateTo(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  static void goBack([dynamic result]) {
    return navigatorKey.currentState!.pop(result);
  }

  static Future<void> goToWorkout() {
    return navigateTo(RouteNames.workout);
  }

  static Future<void> goToSettings() {
    return navigateTo(RouteNames.settings);
  }

  static Future<void> goToDrillDetail(Drill drill) {
    return navigateTo(RouteNames.drillDetail, arguments: drill);
  }
}
