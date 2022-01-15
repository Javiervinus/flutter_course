import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/stars/star.dart';

// ignore: must_be_immutable
class ShowStars extends StatelessWidget {
  ShowStars({Key? key, required this.numberStars, this.size = 22})
      : super(key: key);
  final double numberStars;
  final double size;
  List<Widget> rowStars = [];
  List<Widget> rowStarsBorder = [];
  List<Widget> finalStars = [];

  List<Widget> drawStars() {
    if (numberStars > 5) {
      for (var i = 0; i < 5; i++) {
        rowStars.add(const Star(fill: true));
      }
      return rowStars;
    }
    for (var i = 0; i < numberStars.floor(); i++) {
      rowStars.add(Star(
        fill: true,
        size: size,
      ));
    }
    if (numberStars % 1 == 0) {
      for (var i = 0; i < (numberStars - 5).abs(); i++) {
        rowStarsBorder.add(Star(
          fill: false,
          size: size,
        ));
      }
      finalStars = [...rowStars, ...rowStarsBorder];
    } else {
      rowStars.add(StarHalf(size: size));
      for (var i = 0; i < (numberStars.ceil() - 5).abs(); i++) {
        rowStarsBorder.add(Star(
          fill: false,
          size: size,
        ));
      }
      finalStars = [...rowStars, ...rowStarsBorder];
    }

    return finalStars;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: drawStars());
  }
}
