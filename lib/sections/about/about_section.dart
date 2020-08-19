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
        ],
      ),
    );
  }
}
