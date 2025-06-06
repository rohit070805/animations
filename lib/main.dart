

import 'package:animations/example1.dart';
import 'package:animations/example2.dart';
import 'package:animations/example3.dart';
import 'package:animations/example4.dart';
import 'package:animations/example5.dart';
import 'package:animations/example6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      ),
      home: const Example6(),
    );
  }
}

