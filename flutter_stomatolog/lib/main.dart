import 'package:flutter/material.dart';
import 'package:flutter_stomatolog/screens/animated_onboding_screen.dart';
import 'package:flutter_stomatolog/screens/login_screen.dart';
import 'package:flutter_stomatolog/screens/onbording_screen.dart';

import 'screens/entry_point.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stomatolog',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const OnbodingScreen(),
    );
  }
}




