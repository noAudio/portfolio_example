import 'package:flutter/material.dart';
import 'package:portfolio_example/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

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
