import 'package:flutter/material.dart';
import '../widgets/drill_card.dart';
import '../data/drill_data.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final String language;
  final void Function(int) onTabSelected;

  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.language,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final featuredDrill = allDrills[0];

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              language == 'fil'
                  ? '🏀 Mabilisang Ehersisyo'
                  : '🏀 Quick Start Workout',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  foregroundColor: Colors.blue[900],
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.play_arrow),
                label: Text(
                  language == 'fil' ? 'Simulan ang Ehersisyo' : 'Start Workout',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: () => onTabSelected(2),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              language == 'fil' ? 'Itinatampok na Drill' : 'Featured Drill',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            DrillCard(drill: featuredDrill, language: language),
          ],
        ),
      ),
    );
  }
}
