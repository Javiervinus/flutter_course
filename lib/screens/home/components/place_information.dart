import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/reviews/review_list.dart';

import 'description_place/description_place.dart';

// ignore: non_constant_identifier_names
List<Widget> PlaceInformation() {
  List<Widget> informationReviews = [];
  informationReviews.add(const DesciptionPlace(
    namePlace: "Bahamas",
    stars: 4.5,
  ));
  informationReviews.add(Container(
      margin: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Opacity(
            opacity: 0.7,
            child: Text(
              "All Reviews",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ReviewList(
            numberReviews: 8,
          ),
        ],
      )));
  return informationReviews;
}
