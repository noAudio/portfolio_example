import 'package:flutter/material.dart';
import 'package:portfolio_example/constants.dart';

import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.0),
      constraints: BoxConstraints(maxWidth: 1110.0),
      child: Row(
        children: [
          AboutTextWithSign(),
          Expanded(
            child: AboutSectionText(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            ),
          ),
          ExperienceCard(numOfExp: "08"),
          Expanded(
            child: AboutSectionText(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240.0,
      width: 255.0,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3.0),
              blurRadius: 6,
              color: Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6.0
                      ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5.0),
                        blurRadius: 10.0,
                        color: Color(0xFFA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Years of experience",
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2.0),
      ),
    );
  }
}
