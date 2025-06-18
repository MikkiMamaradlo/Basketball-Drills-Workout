import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Basketball Drills Workout'),
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            Text('Hapon 1'),
            Text('Che-Che 2'),
            Text('Beb 3'),
          ],
        ),
      ),
    ),
  ));
}



