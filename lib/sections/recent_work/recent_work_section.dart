import 'package:flutter/material.dart';
import 'package:portfolio_example/components/hireme_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // demo
      height: 600.0,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          HireMeCard(),
        ],
      ),
    );
  }
}
