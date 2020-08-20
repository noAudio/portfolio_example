import 'package:flutter/material.dart';
import 'package:portfolio_example/models/Feedback.dart';

import '../../../constants.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 350.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: feedback[index].color,
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
                  image: AssetImage(feedback[index].userPic),
                ),
              ),
            ),
          ),
          Text(
            feedback[index].review,
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
