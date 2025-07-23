import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/drill_screen.dart';
import 'screens/workout_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/settings_screen.dart';

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  bool isFilipino = true;
  bool isDarkMode = false;
  int _currentIndex = 0;

  void _onTabTapped(int index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(isFilipino: isFilipino),
      DrillsScreen(isFilipino: isFilipino),
      WorkoutScreen(isFilipino: isFilipino),
      ProgressScreen(isFilipino: isFilipino),
      SettingsScreen(
        isFilipino: isFilipino,
        toggleLanguage: () => setState(() => isFilipino = !isFilipino),
        toggleTheme: () => setState(() => isDarkMode = !isDarkMode),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Drills Workout',
      theme: ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: isFilipino ? 'Bahay' : 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: isFilipino ? 'Mga Drill' : 'Drills'),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: isFilipino ? 'Ehersisyo' : 'Workout'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: isFilipino ? 'Progreso' : 'Progress'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: isFilipino ? 'Settings' : 'Settings'),
          ],
        ),
      ),
    );
  }
}
