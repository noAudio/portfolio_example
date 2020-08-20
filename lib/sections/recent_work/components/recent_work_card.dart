import 'package:flutter/material.dart';
import 'package:portfolio_example/models/RecentWork.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatelessWidget {
  const RecentWorkCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: 540.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        children: [
          Image.asset(recentWorks[index].image),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWorks[index].category.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(height: 1.5),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    "View Default Padding",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}