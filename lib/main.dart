import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar( // Fixed: 'Appbar' → 'AppBar'
        title: Text('Basketball Drills Workout'),
        backgroundColor: Colors.grey[700], // Changed to Colors.grey[700] for a valid color
      ),
      body:Column(
        children:[
          Text('Hapon 1'),
          Text('Che-Che 2'),
          Text('Beb 3'),
        ]


          ),
        ),
      ),
    );
}


