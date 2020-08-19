import 'package:flutter/material.dart';
import 'package:portfolio_example/components/default_button.dart';
import 'package:portfolio_example/constants.dart';

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

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "images/email.png",
            height: 80.0,
            width: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80.0,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starting new project?",
                  style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          DefaultButton(
            text: "Hire Me!",
            imageSrc: "images/hand.png",
            press: () {},
          )
        ],
      ),
    );
  }
}
