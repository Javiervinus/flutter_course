import 'package:flutter/material.dart';
import 'package:platzi_course/pages/home/components/stars/star_rows.dart';
import 'package:platzi_course/shared/button.dart';

class DesciptionPlace extends StatelessWidget {
  const DesciptionPlace(
      {Key? key,
      this.namePlace = "Por defecto",
      this.stars = 5,
      this.descriptionPlace =
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen."})
      : super(key: key);
  final String namePlace;
  final String descriptionPlace;
  final double stars;
  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: Text(namePlace,
              style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Lato"),
              textAlign: TextAlign.left),
        ),
        ShowStars(numberStars: stars)
      ],
    );
    final description = Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 15, fontFamily: "Lato", color: Color(0xFF56575a)),
      ),
    );
    return Container(
      margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleStars, description, const Button(text: "Navegar")],
      ),
    );
  }
}
