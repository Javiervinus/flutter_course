import 'package:flutter/material.dart';

const primary = Color(0XFF223263);

class EspolLoginPage extends StatelessWidget {
  EspolLoginPage({Key? key}) : super(key: key);
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 150,
            color: primary,
            child: Center(
                child: Image.network(
              "https://images.squarespace-cdn.com/content/v1/55d9fb0ee4b0dfd798034243/1559091141481-21H2UVPNSEEONRXMW4R8/Logo+ESPOL+solo.png",
              width: 300,
              color: Colors.white,
            ))),
        Expanded(
            child: Container(
          color: const Color(0xFFb9b9b9),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                formUser(userController),
                formPassword(passwordController),
                Recuerdame(),
                BtnLogIn(context, userController, passwordController)
              ],
            ),
          ),
        ))
      ],
    );
  }
}

Widget formUser(TextEditingController userController) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Usuario:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 0, left: 10, bottom: 0),
                    fillColor: Colors.white,
                    filled: true,
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Text("@espol.edu.ec")
          ],
        )
      ],
    ),
  );
}

Widget formPassword(TextEditingController passwordController) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contraseña:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 0, left: 10, bottom: 0),
                    fillColor: Colors.white,
                    filled: true,
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget Recuerdame() {
  return Row(
    children: [
      Checkbox(value: true, activeColor: primary, onChanged: (a) {}),
      const Text("Recuerdame"),
      const Expanded(
          child: Text(
        "¿Aún no tienes una cuenta?",
        textAlign: TextAlign.end,
        style: TextStyle(color: primary),
      ))
    ],
  );
}

Widget BtnLogIn(BuildContext context, TextEditingController userController,
    TextEditingController passwordController) {
  bool _ingreso;
  return InkWell(
    onTap: () {
      if (userController.text == "developer" &&
          passwordController.text == "dart2022") {
        _ingreso = true;
      } else {
        _ingreso = false;
      }
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(_ingreso ? "Acceso correcto" : "Datos incorrectos")));
    },
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: primary,
      ),
      child: const Center(
        child: Text(
          "INICIAR SESIÓN",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
    ),
  );
}
