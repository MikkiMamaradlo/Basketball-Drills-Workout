import 'package:flutter/material.dart';
import '../data/drill_data.dart';
import '../widgets/drill_card.dart';

class WorkoutScreen extends StatelessWidget {
  final bool isDarkMode;
  final String language;
  final void Function(int) onTabSelected;

  const WorkoutScreen({
    super.key,
    required this.isDarkMode,
    required this.language,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final selectedDrills = allDrills.take(4).toList();

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            language == 'fil' ? '🧩 Ehersisyo Ngayon' : '🧩 Today\'s Workout',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.yellow[700],
            ),
          ),
          const SizedBox(height: 16),
          ...selectedDrills.map((drill) => DrillCard(drill: drill, language: language)).toList(),
        ],
      ),
    );
  }
}
