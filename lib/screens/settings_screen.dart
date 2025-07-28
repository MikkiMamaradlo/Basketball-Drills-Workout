import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final bool isDarkMode;
  final String language;
  final void Function(bool) onThemeChanged;
  final void Function(String?) onLanguageChanged;

  const SettingsScreen({
    super.key,
    required this.isDarkMode,
    required this.language,
    required this.onThemeChanged,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            language == 'fil' ? '⚙️ Mga Setting' : '⚙️ Settings',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[700],
                ),
          ),
          const SizedBox(height: 24),
          SwitchListTile(
            value: isDarkMode,
            title: Text(
              language == 'fil' ? 'Madilim na Tema' : 'Dark Mode',
              style: const TextStyle(fontSize: 16),
            ),
            activeColor: Colors.yellow[700],
            onChanged: onThemeChanged,
          ),
          const SizedBox(height: 16),
          ListTile(
            title: Text(
              language == 'fil' ? 'Wika' : 'Language',
              style: const TextStyle(fontSize: 16),
            ),
            trailing: DropdownButton<String>(
              value: language,
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'fil', child: Text('Filipino')),
              ],
              onChanged: onLanguageChanged,
            ),
          ),
        ],
      ),
    );
  }
}
