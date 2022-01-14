import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Navegando")));
      },
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
            text,
            style: const TextStyle(
                fontSize: 18, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
