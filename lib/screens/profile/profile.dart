import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/gradiant_back.dart';
import 'package:platzi_course/screens/profile/components/header.dart';
import 'package:platzi_course/shared/container_app.dart';

class ProfileTrips extends StatelessWidget {
  ProfileTrips({Key? key}) : super(key: key);

  Container exp() {
    return Container(
      color: Colors.white,
      height: 300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: boxDecoration(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: const ProfileHeader(),
          ),
        ],
      ),
    );
  }
}
