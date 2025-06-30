import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String description;

  ItemCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ListTile(
          leading: Icon(Icons.sports_basketball, size: 40, color: Colors.orange),
          title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text(description),
        ),
      ),
    );
  }
}
