import 'package:flutter/material.dart';

class Botones {
  String text;
  Color color;
  bool signo;
  Botones(
      {required this.text,
      this.color = const Color(0xff837e80),
      this.signo = false}) {
    if (signo == true) {
      color = const Color(0xfff29e33);
    }
  }
}

class Calculadora extends StatefulWidget {
  Calculadora({Key? key}) : super(key: key);

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  List<Botones> botones = [
    Botones(text: 'AC', color: const Color(0xff696467)),
    Botones(text: '+/-', color: const Color(0xff696467)),
    Botones(text: '%', color: const Color(0xff696467)),
    Botones(text: '/', signo: true),
    Botones(text: '7'),
    Botones(text: '8'),
    Botones(text: '9'),
    Botones(text: 'x', signo: true),
    Botones(text: '4'),
    Botones(text: '5'),
    Botones(text: '6'),
    Botones(text: '-', signo: true),
    Botones(text: '1'),
    Botones(text: '2'),
    Botones(text: '3'),
    Botones(text: '+', signo: true),
    Botones(text: '0'),
    Botones(text: ','),
    Botones(text: '=', signo: true),
  ];
  final tapController = TextEditingController();
  bool isNumeric(String string) {
    // Null or empty string is not a number
    if (string.isEmpty) {
      return false;
    }

    // Try to parse input string to number.
    // Both integer and double work.
    // Use int.tryParse if you want to check integer only.
    // Use double.tryParse if you want to check double only.
    final number = num.tryParse(string);

    if (number == null) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: const Alignment(1, 1),
              children: [
                Container(
                  color: const Color(0xff595357),
                ),
                TextField(
                    controller: tapController,
                    textAlign: TextAlign.end,
                    readOnly: false,
                    style: const TextStyle(fontSize: 65, color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(right: 15, bottom: 0),
                      fillColor: Colors.transparent,
                      filled: true,
                    ))
              ],
            ),
          ),
          Container(
            color: const Color(0xff595357),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              children: botones.map((Botones boton) {
                return InkWell(
                  onTap: () {
                    if (boton.text == "AC") {
                      setState(() {
                        tapController.text = "";
                      });
                    } else {
                      // ignore: unrelated_type_equality_checks
                      if (isNumeric(boton.text)) {
                        setState(() {
                          tapController.text = tapController.text + boton.text;
                        });
                      }
                    }
                  },
                  child: Container(
                    color: boton.color,
                    margin: const EdgeInsets.all(1.0),
                    child: Center(
                      child: Text(
                        boton.text,
                        style: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> allItems() {
  List<Widget> items = [];
  for (var i = 0; i < 16; i++) {
    items.add(Container(color: Colors.blue));
  }
  return items;
}
