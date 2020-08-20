import 'package:flutter/material.dart';
import 'package:portfolio_example/components/section_title.dart';
import 'package:portfolio_example/constants.dart';
import 'package:portfolio_example/models/Feedback.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110.0),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client testimonials that really inspired me",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: List.generate(
              feedback.length,
              (index) => FeedbackCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 350.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: feedback[0].color,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -55.0),
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 10.0),
                image: DecorationImage(
                  image: AssetImage(feedback[0].userPic),
                ),
              ),
            ),
          ),
          Text(
            feedback[0].review,
            style: TextStyle(
              color: kTextColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              height: 1.5,
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Text(
            "Ronald Thompson",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
