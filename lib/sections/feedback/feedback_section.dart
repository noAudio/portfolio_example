import 'package:flutter/material.dart';
import 'package:portfolio_example/components/section_title.dart';
import 'package:portfolio_example/constants.dart';
import 'package:portfolio_example/models/Feedback.dart';

import 'components/feedback_card.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedback.length,
              (index) => FeedbackCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
