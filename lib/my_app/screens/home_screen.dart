import 'package:flutter/material.dart';
import '../widgets/drill_card.dart';
import '../data/drill_data.dart';
import '../app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isFilipino = InheritedSettings.of(context).isFilipino;

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            isFilipino ? 'Simula' : 'Home',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Text(isFilipino ? 'Simula Agad' : 'Quick Start'),
          ),
          const SizedBox(height: 24),
          Text(
            isFilipino ? 'Itinampok na Drill' : 'Featured Drill',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          DrillCard(title: drills[0]['title']!, time: drills[0]['time']!),
        ],
      ),
    );
  }
}
