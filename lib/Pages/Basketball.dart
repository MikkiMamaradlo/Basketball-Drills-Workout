import 'package:flutter/material.dart';
import 'ItemCard.dart';

class Basketball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ItemCard(title: 'Handling', color: Colors.orangeAccent),
            ItemCard(title: 'Shooting Form', color: Colors.lightBlue),
            ItemCard(title: 'Defense', color: Colors.greenAccent),
          ],
        ),
      ),
    );
  }
}
