import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/header.dart';
import 'package:platzi_course/shared/container_app.dart';
import 'components/place_information.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0, color: Colors.white)),
              child: const Header(),
            ),
            Container(
                color: Colors.white,
                child: Column(children: PlaceInformation())),
          ],
        ),
      ),
    );
  }
}
