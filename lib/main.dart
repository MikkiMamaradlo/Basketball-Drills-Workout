import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Basketball Drils Workout'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            margin: EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Mikki',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Age:',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Text(
                  '23 years old',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 4, 3, 2),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,  // changed to red
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}