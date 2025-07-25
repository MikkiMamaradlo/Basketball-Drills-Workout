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

    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final categoryDrills = allDrills.where((d) => d.category == category).toList();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language == 'fil'
                    ? _translateCategory(category)
                    : category,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              ...categoryDrills.map((drill) => DrillCard(drill: drill, language: language)).toList(),
              const SizedBox(height: 24),
            ],
          );
        },
      ),
    );
  }

  String _translateCategory(String category) {
    switch (category) {
      case 'Handling':
        return 'Paghawak ng Bola';
      case 'Shooting Form':
        return 'Porma sa Pagbaril';
      case 'Defense':
        return 'Depensa';
      default:
        return category;
    }
  }
}
