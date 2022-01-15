import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/stars/star_rows.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails(
      {Key? key,
      this.name = "Javier Vinueza",
      this.numberStars = 5,
      this.email = "javiervin@hotmail.com",
      this.comment = "There is an amazing place in Sri lanka"})
      : super(key: key);
  final String pathImage = "assets/images/Angita.jpeg";
  final String name;
  final String email;
  final String comment;
  final double numberStars;

  @override
  Widget build(BuildContext context) {
    final userInfo = Container(
        margin: const EdgeInsets.only(
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name,
                style: const TextStyle(
                    fontFamily: "lato",
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 5),
                child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          email,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        )))),
          ],
        ));
    final photo = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [photo, userInfo],
      ),
    );
  }
}
