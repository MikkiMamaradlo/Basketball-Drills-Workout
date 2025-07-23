import 'package:flutter/material.dart';
import '../widgets/drill_card.dart';
import '../drill_data.dart';

class ProgressScreen extends StatelessWidget {
  final bool isFilipino;

  const ProgressScreen({super.key, required this.isFilipino});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            isFilipino ? 'Progreso' : 'Progress',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ...drills.map((drill) => DrillCard(
            title: drill['title']!,
            duration: drill['duration']!,
          )),
        ],
      ),
    );
  }
}
