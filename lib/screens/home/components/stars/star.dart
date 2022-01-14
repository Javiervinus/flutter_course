import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({Key? key, required this.fill, this.size = 22}) : super(key: key);
  final bool fill;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        fill ? Icons.star : Icons.star_border,
        color: const Color(0xFFf2C611),
        size: size,
      ),
    );
  }
}

class StarHalf extends StatelessWidget {
  const StarHalf({Key? key, this.size = 22}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: const Color(0xFFf2C611),
        size: size,
      ),
    );
  }
}
