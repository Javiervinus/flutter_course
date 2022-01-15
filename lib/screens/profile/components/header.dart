import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/gradiant_back.dart';
import 'package:platzi_course/screens/home/components/reviews/review.dart';
import 'package:platzi_course/screens/profile/components/bottons_row.dart';
import 'package:platzi_course/screens/profile/components/profile_details.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradiantBack(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: ProfileDetail(),
          ),
        ),
      ],
    );
  }
}

Column ProfileDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text("Perfil",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold)),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Opacity(
                  opacity: 0.4,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 17,
                  )),
            ],
          )),
        ],
      ),
      const ProfileDetails(),
      ButtonRows()
    ],
  );
}
