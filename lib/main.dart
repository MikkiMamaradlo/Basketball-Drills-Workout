import 'package:flutter/material.dart';
import 'Pages/Dashboard.dart';

void main() {
  runApp(BasketballDrillsWorkoutApp());
}

class BasketballDrillsWorkoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Drills Workout',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
