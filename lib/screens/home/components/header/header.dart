import 'package:flutter/material.dart';
import 'package:platzi_course/screens/home/components/header/card_image_list.dart';
import 'package:platzi_course/screens/home/components/header/gradiant_back.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [GradiantBack(), CardImageList()],
    );
  }
}
