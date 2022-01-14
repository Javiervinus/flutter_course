import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/header.dart';
import 'components/place_information.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(children: PlaceInformation()),
        const Header(),
      ],
    );
  }
}
