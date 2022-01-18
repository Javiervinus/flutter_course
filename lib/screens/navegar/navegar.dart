import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/card_image.dart';
import 'package:platzi_course/screens/home/components/stars/star_rows.dart';
import 'package:platzi_course/screens/navegar/components/button_navegar.dart';

class NavegarPage extends StatelessWidget {
  const NavegarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Hero(
                tag: "texto",
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Text("Bahamas",
                          style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Lato"),
                          textAlign: TextAlign.left),
                    ),
                  ],
                )),
            ButtomNavegar()
          ],
        ),
      ),
    );
  }
}
