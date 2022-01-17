import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/floating_fav_button.dart/floating_fav_button.dart';

class Place extends StatelessWidget {
  Place({Key? key, required this.pathImage, required this.placeName})
      : super(key: key);
  final String pathImage;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.75),
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 60),
          height: 190,
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
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Stack(
            alignment: const Alignment(0.8, 1.2),
            children: [
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        placeName,
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Text(
                            "Fundada como São Sebastião do Rio de Janeiro,4​ es una ciudad, municipio brasileño",
                            style: TextStyle(fontSize: 11, height: 1.1),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Text(
                          "Steps 123,122,11",
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 7)),
                    ]),
              ),
              const SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingFavActionButton(
                    size: 17,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
