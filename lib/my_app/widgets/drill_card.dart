import 'package:flutter/material.dart';

class DrillCard extends StatelessWidget {
  final String title;
  final String time;

  const DrillCard({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.sports_basketball),
        title: Text(title),
        trailing: Text(time),
      ),
    );
  }
}
