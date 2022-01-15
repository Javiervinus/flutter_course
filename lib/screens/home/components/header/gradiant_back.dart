import 'package:flutter/material.dart';

class GradiantBack extends StatelessWidget {
  GradiantBack(
      {Key? key,
      this.height = 270,
      this.title = "Bienvenido",
      required this.child})
      : super(key: key);
  final String title;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: const Alignment(-0.85, -0.6),
        height: height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0XFF584CD1)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.5, 1],
                tileMode: TileMode.clamp)),
        child: child);
  }
}
