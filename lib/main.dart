import 'package:flutter/material.dart';
import './neu_home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Neumorphic Design',
      home: NeuHome(title: 'Neumorphic Design'),
    );
  }
}


