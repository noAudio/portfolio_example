import 'package:flutter/material.dart';

String review =
    "Lorem ipsum dolor amet, consectetur adipisicing elit, sed do eiusmod, tempor incididunt ut labore et dolore mag a";

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({
    this.name,
    this.review,
    this.userPic,
    this.id,
    this.color,
  });
}

// List of demo feedback
List<Feedback> feedback = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];
