import 'package:flutter/material.dart';
import 'package:platzi_course/pages/home/components/header/gradiant_back.dart';
import 'package:platzi_course/pages/home/components/header/header.dart';
import 'components/description_place/description_place.dart';
import 'components/reviews/review_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView(children: PlaceInformation()),
      const Header(),
    ]);
  }
}

List<Widget> PlaceInformation() {
  List<Widget> informationReviews = [];
  informationReviews.add(const DesciptionPlace(
    namePlace: "Bahamas",
    stars: 4.5,
  ));
  informationReviews.add(Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
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
