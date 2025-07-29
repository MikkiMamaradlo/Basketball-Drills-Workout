import 'package:flutter/material.dart';
import '../data/drill_data.dart';
import '../widgets/drill_card.dart';

class DrillScreen extends StatelessWidget {
  final bool isDarkMode;
  final String language;
  final void Function(int) onTabSelected;

  const DrillScreen({
    super.key,
    required this.isDarkMode,
    required this.language,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final categories = ['Handling', 'Shooting Form', 'Defense'];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(language == 'fil' ? '🧩Mga Drills' : '🧩Drills'),
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.blue[900],
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            final categoryDrills =
                allDrills.where((d) => d.category == category).toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      _getCategoryIcon(category),
                      color: Colors.yellow[700],
                    ),
                    const SizedBox(width: 8),
                    Text(
                      language == 'fil'
                          ? _translateCategory(category)
                          : category,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ...categoryDrills
                    .map((drill) => DrillCard(drill: drill, language: language))
                    .toList(),
                const SizedBox(height: 24),
              ],
            );
          },
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Handling':
        return Icons.pan_tool_alt;
      case 'Shooting Form':
        return Icons.sports_basketball;
      case 'Defense':
        return Icons.shield;
      default:
        return Icons.sports;
    }
  }

  String _translateCategory(String category) {
    switch (category) {
      case 'Handling':
        return 'Paghawak ng Bola';
      case 'Shooting Form':
        return 'Porma ng Pagbaril';
      case 'Defense':
        return 'Depensa';
      default:
        return category;
    }
  }
}
