import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final Color color;

  ItemCard({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.sports_basketball, size: 30),
            SizedBox(width: 10),
            Text(title, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
