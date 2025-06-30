import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drill List')),
      body: ListView(
        children: [
          ListTile(title: Text('Dribble Drill')),
          ListTile(title: Text('Layup Drill')),
          ListTile(title: Text('Defense Slide')),
        ],
      ),
    );
  }
}
