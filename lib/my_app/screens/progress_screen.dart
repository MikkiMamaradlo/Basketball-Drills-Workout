import 'package:flutter/material.dart';
import '../widgets/drill_card.dart';
import '../data/drill_data.dart';
import '../app.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isFilipino = InheritedSettings.of(context).isFilipino;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            isFilipino ? 'Progreso' : 'Progress',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          ...drills.map((drill) => DrillCard(
            title: drill['title']!,
            time: drill['time']!,
          )),
        ],
      ),
    );
  }
}
