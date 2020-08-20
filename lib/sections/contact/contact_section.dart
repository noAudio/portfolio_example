import 'package:flutter/material.dart';
import 'package:portfolio_example/components/section_title.dart';
import 'package:portfolio_example/constants.dart';

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
              ),
              SocialCard(
                color: Color(0xFFE4FFC7),
                iconSrc: "images/whatsapp.png",
                name: "My Whatsapp",
              ),
              SocialCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "images/messanger.png",
                name: "My Messenger ID",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.iconSrc,
    this.name,
    this.color,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2,
          horizontal: kDefaultPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [kDefaultShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              iconSrc,
              height: 80.0,
              width: 80.0,
            ),
            SizedBox(width: kDefaultPadding),
            Text(name),
          ],
        ),
      ),
    );
  }
}