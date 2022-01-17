import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/gradiant_back.dart';
import 'package:platzi_course/screens/profile/components/header.dart';
import 'package:platzi_course/screens/profile/components/place.dart';
import 'package:platzi_course/shared/container_app.dart';

class ProfileTrips extends StatelessWidget {
  ProfileTrips({Key? key}) : super(key: key);

  Container exp() {
    return Container(
      color: Colors.black,
      height: 300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const ProfileHeader(),
        Padding(
          padding: const EdgeInsets.only(top: 280, left: 20, right: 20),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Place(
                pathImage: "assets/images/mountain_stars.jpeg",
                placeName: "Estrellas",
              ),
              Place(
                pathImage: "assets/images/beach_palm.jpeg",
                placeName: "Rio de Janeiro",
              ),
              Place(
                  pathImage: "assets/images/mountain.jpeg",
                  placeName: "Montaña"),
              Place(
                  pathImage: "assets/images/river.jpeg", placeName: "Rio Luna"),
              Place(
                  pathImage: "assets/images/sunset.jpeg",
                  placeName: "Atardecer"),
            ],
          ),
        )
      ]),
    );
  }
}
