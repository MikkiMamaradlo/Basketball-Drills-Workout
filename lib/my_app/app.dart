import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/drills_screen.dart';
import 'screens/workout_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/settings_screen.dart';

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  int _selectedIndex = 0;
  bool isDarkMode = false;
  bool isFilipino = false;

  final List<Widget> _screens = const [
    HomeScreen(),
    DrillsScreen(),
    WorkoutScreen(),
    ProgressScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Drills',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens.map((screen) {
            return InheritedSettings(
              isFilipino: isFilipino,
              child: screen,
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          onTap: (index) => setState(() => _selectedIndex = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.sports_basketball), label: 'Drills'),
            BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Workout'),
            BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Progress'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}

class InheritedSettings extends InheritedWidget {
  final bool isFilipino;

  const InheritedSettings({
    super.key,
    required super.child,
    required this.isFilipino,
  });

  static InheritedSettings of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedSettings>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedSettings oldWidget) {
    return oldWidget.isFilipino != isFilipino;
  }
}
