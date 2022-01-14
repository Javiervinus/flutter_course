import 'package:flutter/material.dart';
import 'package:platzi_course/pages/home/components/reviews/review.dart';

class ReviewList extends StatelessWidget {
  ReviewList({Key? key, required this.numberReviews}) : super(key: key);
  final int numberReviews;
  List<Widget> _reviews = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < numberReviews; i++) {
      if (i % 2 == 0) {
        _reviews.add(const Review(
          name: "Angie Tuarez",
          numberStars: 5,
        ));
      } else {
        _reviews.add(const Review());
      }
    }
    _reviews = [..._reviews];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _reviews,
    );
  }
}
