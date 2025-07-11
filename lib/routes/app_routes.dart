import 'package:flutter/material.dart';
import '../models/drill.dart';
import '../screens/home_screen.dart';
import '../screens/routine_screen.dart';
import '../screens/drills_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/workout_screen.dart';
import '../screens/drill_screen.dart';
import 'route_names.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteNames.home: (context) => const HomeScreen(),
      RouteNames.routine: (context) => const RoutineScreen(),
      RouteNames.drills: (context) => const DrillsScreen(),
      RouteNames.settings: (context) => const SettingsScreen(),
      RouteNames.workout: (context) => const WorkoutScreen(),
    };
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.drillDetail:
        final args = settings.arguments;
        if (args is Drill) {
          return MaterialPageRoute(
            builder: (context) => DrillScreen(drill: args),
          );
        }
        return null;
      case RouteNames.workout:
        return MaterialPageRoute(
          builder: (context) => const WorkoutScreen(),
        );
      default:
        return null;
    }
  }
}
