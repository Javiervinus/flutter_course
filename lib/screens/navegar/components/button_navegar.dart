import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/routes/app_router.dart';

class ButtomNavegar extends StatefulWidget {
  ButtomNavegar({Key? key}) : super(key: key);

  @override
  _ButtomNavegarState createState() => _ButtomNavegarState();
}

class _ButtomNavegarState extends State<ButtomNavegar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(ProfileTripsRoute());
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Navegando")));
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
              "to profile",
              style: const TextStyle(
                  fontSize: 18, fontFamily: "Lato", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
