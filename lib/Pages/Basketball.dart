import 'package:flutter/material.dart';

class BasketballScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Ball Handling', 'icon': Icons.sports_basketball},
    {'title': 'Shooting Form', 'icon': Icons.sports},
    {'title': 'Defense Drills', 'icon': Icons.shield},
    {'title': 'Passing Drills', 'icon': Icons.compare_arrows},
    {'title': 'Rebounding', 'icon': Icons.height},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Categories'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(categories[index]['icon'], color: Colors.orange, size: 30),
              title: Text(
                categories[index]['title'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${categories[index]['title']} tapped')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
