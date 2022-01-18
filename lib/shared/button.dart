import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/routes/app_router.gr.dart';
import 'package:platzi_course/screens/navegar/navegar.dart';
import 'package:platzi_course/screens/profile/components/header.dart';

class Button extends StatefulWidget {
  const Button({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).pushWidget(const NavegarPage(
          desde: "Home",
        ));
        // context.pushRoute(ProfileTripsRoute());
      },
      child: Hero(
        tag: "unico_id",
        child: Container(
          margin: const EdgeInsets.only(top: 30, right: 20),
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  colors: [Color(0XFF4268D3), Color(0XFF584CD1)],
                  begin: FractionalOffset(0.2, 0),
                  end: FractionalOffset(1, 0.6),
                  stops: [0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontSize: 18, fontFamily: "Lato", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
