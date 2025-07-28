import 'package:flutter/material.dart';
import '../models/drill.dart';

class DrillDetailsScreen extends StatelessWidget {
  final Drill drill;
  final String language;

  const DrillDetailsScreen({
    super.key,
    required this.drill,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drill.getTitle(language)),
        backgroundColor: Colors.yellow[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              drill.getTitle(language),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              language == 'fil'
                  ? 'Kategorya: ${drill.category == "Handling" ? "Paghawak ng Bola" : drill.category == "Shooting Form" ? "Porma ng Pagbaril" : "Depensa"}'
                  : 'Category: ${drill.category}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              language == 'fil'
                  ? 'Tagal: ${drill.duration} segundo'
                  : 'Duration: ${drill.duration} seconds',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            Center(
              child: Icon(
                Icons.sports_basketball,
                color: Colors.amber,
                size: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}