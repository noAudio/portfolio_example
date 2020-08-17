import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_example/constants.dart';

import 'components/glass_content.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        maxHeight: 900.0,
        minHeight: 700.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "images/background.png",
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding,
        ),
        width: 1200.0,
        child: Column(
          children: [
            Image.asset("images/Logo.png"),
            GlassContent(size: size),
          ],
        ),
      ),
    );
  }
}
