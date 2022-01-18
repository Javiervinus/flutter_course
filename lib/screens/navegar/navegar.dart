import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/screens/navegar/components/button_navegar.dart';

class NavegarPage extends StatelessWidget {
  const NavegarPage({Key? key, @QueryParam() this.desde = "home"})
      : super(key: key);
  final String desde;
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Text("Bahamas $desde",
                          style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
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
