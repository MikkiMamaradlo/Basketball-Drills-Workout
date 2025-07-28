import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  final bool isDarkMode;
  final String language;
  final void Function(int) onTabSelected;

  const ProgressScreen({
    super.key,
    required this.isDarkMode,
    required this.language,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              language == 'fil' ? '🎯 Progreso' : '🎯 Progress',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[700],
                  ),
            ),
            const SizedBox(height: 32),
            Center(
              child: Icon(Icons.emoji_events, color: Colors.amber, size: 80),
            ),
            const SizedBox(height: 24),
            Text(
              language == 'fil'
                  ? 'Panatilihin ang iyong pagsasanay! Ang bawat araw ng ehersisyo ay hakbang papunta sa tagumpay.'
                  : 'Keep training! Every workout is a step closer to greatness.',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Text(
              language == 'fil' ? 'Kabuuang Drills: 6' : 'Total Drills: 6',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
