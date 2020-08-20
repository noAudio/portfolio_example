import 'package:flutter/material.dart';
import 'package:portfolio_example/constants.dart';
import 'package:portfolio_example/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio Web App',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
