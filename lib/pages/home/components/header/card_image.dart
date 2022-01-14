import 'package:flutter/material.dart';
import 'package:platzi_course/pages/home/components/floating_fav_button.dart/floating_fav_button.dart';

class CardImage extends StatelessWidget {
  const CardImage({Key? key, this.pathImage = "assets/images/beach.jpeg"})
      : super(key: key);
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80, left: 20),
          height: 350,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(pathImage)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15,
                    offset: Offset(0, 7)),
              ]),
        ),
        const FloatingFavActionButton(),
      ],
    );
  }
}
