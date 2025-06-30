import 'package:flutter/material.dart';
import 'ItemCard.dart';

class ListItemsScreen extends StatelessWidget {
  final List<Map<String, String>> drills = [
    {'title': 'Dribble Drill', 'description': 'Improve your ball handling'},
    {'title': 'Shooting Drill', 'description': 'Improve your shooting form'},
    {'title': 'Defense Drill', 'description': 'Boost your defense techniques'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Today's Drills")),
      body: ListView.builder(
        itemCount: drills.length,
        itemBuilder: (context, index) {
          return ItemCard(
            title: drills[index]['title']!,
            description: drills[index]['description']!,
          );
        },
      ),
    );
  }
}
