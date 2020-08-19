import 'package:flutter/material.dart';
import 'package:portfolio_example/components/section_title.dart';
import 'package:portfolio_example/constants.dart';
import 'package:portfolio_example/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110.0),
      child: Column(
        children: [
          SectionTitle(
            title: "Service Offerings",
            subTitle: "My Strong Areas",
            color: Color(0xFFFF0000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length,
                (index) => ServiceCard(
                      index: index,
                    )),
          ),
        ],
      ),
    );
  }
}
