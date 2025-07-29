import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
import 'screens/drill_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/settings_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  bool isDarkMode = false;
  String language = 'en'; // or 'fil'

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  void _changeLanguage(String? newLang) {
    if (newLang != null) {
      setState(() {
        language = newLang;
      });
    }
  }

  Widget getCurrentScreen() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen(
          isDarkMode: isDarkMode,
          language: language,
          onTabSelected: _onTabSelected,
        );
      case 1:
        return DrillScreen(
          isDarkMode: isDarkMode,
          language: language,
          onTabSelected: _onTabSelected,
        );
      case 2:
        return ProgressScreen(
          isDarkMode: isDarkMode,
          language: language,
          onTabSelected: _onTabSelected,
        );
      case 3:
        return SettingsScreen(
          isDarkMode: isDarkMode,
          language: language,
          onThemeChanged: _toggleTheme,
          onLanguageChanged: _changeLanguage,
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData lightTheme = ThemeData.light().copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(),
      scaffoldBackgroundColor: Colors.white,
    );

    final ThemeData darkTheme = ThemeData.dark().copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(
        ThemeData.dark().textTheme,
      ),
      scaffoldBackgroundColor: const Color(0xFF0A0E21),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home: Scaffold(
        body: getCurrentScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onTabSelected,
          selectedItemColor: Colors.yellow[700],
          unselectedItemColor: Colors.grey[400],
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: language == 'fil' ? 'Bahay' : 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.sports_basketball),
              label: language == 'fil' ? 'Ehersisyo' : 'Drills',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.bar_chart),
              label: language == 'fil' ? 'Sipi' : 'Quote',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: language == 'fil' ? 'Setting' : 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
