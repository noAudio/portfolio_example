import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_example/constants.dart';

import 'components/glass_content.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
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
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 639.0,
                  maxHeight: 860.0,
                ),
                child: Image.asset("images/person.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("images/Logo.png"),
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3),
      ],
    );
  }
}
