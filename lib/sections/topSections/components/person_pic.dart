import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 639.0,
        maxHeight: 860.0,
      ),
      child: Image.asset("images/person.png"),
    );
  }
}
