import 'package:flutter/material.dart';
import '../widgets/drill_card.dart';
import '../drill_data.dart';

class HomeScreen extends StatelessWidget {
  final bool isFilipino;

  const HomeScreen({super.key, required this.isFilipino});

  @override
  Widget build(BuildContext context) {
    final featuredDrill = drills.first;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            isFilipino ? 'Simula' : 'Home',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Start quick workout logic here
            },
            child: Text(isFilipino ? 'Magsimula ng Ehersisyo' : 'Quick Start Workout'),
          ),
          const SizedBox(height: 32),
          Text(
            isFilipino ? 'Itinatampok na Drill' : 'Featured Drill',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          DrillCard(
            title: featuredDrill['title']!,
            duration: featuredDrill['duration']!,
          ),
        ],
      ),
    );
  }
}
