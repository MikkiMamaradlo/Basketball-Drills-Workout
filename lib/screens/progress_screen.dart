import 'package:flutter/material.dart';
import '../data/drill_data.dart';
import '../widgets/drill_card.dart';

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
    final recentDrills = allDrills.reversed.take(3).toList();

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            language == 'fil' ? '📈 Kamakailang Aktibidad' : '📈 Recent Activity',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.yellow[700],
            ),
          ),
          const SizedBox(height: 16),
          ...recentDrills.map((drill) => DrillCard(drill: drill, language: language)).toList(),
        ],
      ),
    );
  }
}
