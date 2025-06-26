import 'package:flutter/material.dart';

void main() {
  runApp(BasketballDrillsWorkoutApp());
}

class BasketballDrillsWorkoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Drills Workout',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    WorkoutScreen(),
    ProgressScreen(),
  ];

  void _onTabTapped(int index) {
    // Disabled tap interaction
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: IgnorePointer(
        ignoring: true, // disables interaction
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Workout',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Progress',
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Drills Workout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Let\'s Get to Work',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: null, // Disabled button
              child: Text('Start Workout'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            Column(
              children: [
                Icon(Icons.sports_basketball, size: 100),
                SizedBox(height: 10),
                Text(
                  'Zigzag Dribble',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Workout Routine Placeholder',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Progress Tracker Placeholder',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
