import 'package:flutter/material.dart';
import 'World Time/choose_location.dart';
import 'World Time/home.dart';
import 'World Time/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/Location': (context) => ChooseLocation(),
  },
));