import 'package:flutter/material.dart';

BoxDecoration boxDecoration() {
  return const BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.white, Color(0XFF584CD1)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.4,
            0.5,
          ],
          tileMode: TileMode.clamp));
}
