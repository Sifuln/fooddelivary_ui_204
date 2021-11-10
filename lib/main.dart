import 'package:flutter/material.dart';
import 'package:food_delivary_ui_204/screens/homescreen.dart';

void main() => runApp(AmarApp());

class AmarApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery UI',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Colors.deepOrangeAccent
      ),
      home: HomeScreen(),
    );
  }
}

