import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final bool isFilipino;
  final VoidCallback toggleLanguage;
  final VoidCallback toggleTheme;

  const SettingsScreen({
    super.key,
    required this.isFilipino,
    required this.toggleLanguage,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            isFilipino ? 'Mga Setting' : 'Settings',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 24),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(isFilipino ? 'Palitan ang Wika' : 'Toggle Language'),
            onTap: toggleLanguage,
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: Text(isFilipino ? 'Palitan ang Tema' : 'Toggle Theme'),
            onTap: toggleTheme,
          ),
        ],
      ),
    );
  }
}
