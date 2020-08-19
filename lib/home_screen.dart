import 'package:flutter/material.dart';
import 'package:portfolio_example/sections/about/about_section.dart';
import 'package:portfolio_example/sections/topSections/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            AboutSection(),
            SizedBox(height: 500.0),
          ],
        ),
      ),
    );
  }
}
