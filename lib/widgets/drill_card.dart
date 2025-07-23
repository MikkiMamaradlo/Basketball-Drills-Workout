import 'package:flutter/material.dart';

class DrillCard extends StatelessWidget {
  final String title;
  final String duration;

  const DrillCard({
    super.key,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.sports_basketball, color: Colors.orange),
        title: Text(title),
        trailing: Text(duration),
      ),
    );
  }
}
