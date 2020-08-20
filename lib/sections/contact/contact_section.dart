import 'package:flutter/material.dart';
import 'package:portfolio_example/components/section_title.dart';
import 'package:portfolio_example/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110.0),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "images/skype.png",
                name: "My Twitter",
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "images/whatsapp.png",
                name: "My Whatsapp",
                press: () {},
              ),
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "images/messanger.png",
                name: "My Messenger ID",
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
