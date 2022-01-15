import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/header.dart';
import 'package:platzi_course/shared/container_app.dart';
import 'components/place_information.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(color: Colors.white, child: const Header()),
          Container(
              color: Colors.white, child: Column(children: PlaceInformation())),
        ],
      ),
    );
  }
}
