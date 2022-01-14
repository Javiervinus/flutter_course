import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/stars/star_rows.dart';

class Review extends StatelessWidget {
  const Review(
      {Key? key,
      this.name = "Javier Vinueza",
      this.numberStars = 5,
      this.details = "1 review . 5 photos",
      this.comment = "There is an amazing place in Sri lanka"})
      : super(key: key);
  final String pathImage = "assets/images/Angita.jpeg";
  final String name;
  final String details;
  final String comment;
  final double numberStars;

  @override
  Widget build(BuildContext context) {
    final userInfo = Container(
        margin: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name,
                style: const TextStyle(
                    fontFamily: "lato",
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            Container(
                margin: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Opacity(opacity: 0.7, child: Text(details))),
                    ShowStars(
                      numberStars: numberStars,
                      size: 13,
                    )
                  ],
                )),
            Opacity(
              opacity: 0.7,
              child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    comment,
                    style: const TextStyle(
                        fontFamily: "lato",
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  )),
            )
          ],
        ));
    final photo = CircleAvatar(
      backgroundImage: AssetImage(pathImage),
      radius: 35,
    );

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [photo, userInfo],
      ),
    );
  }
}
