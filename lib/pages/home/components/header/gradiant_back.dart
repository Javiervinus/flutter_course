import 'package:flutter/material.dart';

class GradiantBack extends StatelessWidget {
  const GradiantBack({Key? key}) : super(key: key);
  final String title = "Popular";
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: const Alignment(-0.85, -0.6),
        height: 270,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0XFF584CD1)],
                begin: FractionalOffset(0.3, 0),
                end: FractionalOffset(1, 0),
                stops: [0, 0.6],
                tileMode: TileMode.clamp)),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold),
        ));
  }
}
