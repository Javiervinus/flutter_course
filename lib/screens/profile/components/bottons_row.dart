import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:platzi_course/routes/app_router.dart';
import 'package:platzi_course/routes/app_router.gr.dart';

class ButtonRows extends StatefulWidget {
  ButtonRows({Key? key}) : super(key: key);

  @override
  _ButtonRowsState createState() => _ButtonRowsState();
}

onPressed(context) {
  // AutoRouter.of(context).navigate(NavegarRoute(id: 3));
}

class _ButtonRowsState extends State<ButtonRows> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtomSetting(icon: Icons.bookmark_border),
          ButtomSetting(icon: Icons.calendar_today_outlined, opacity: 0.4),
          ButtomSetting(icon: Icons.add, size: 60),
          ButtomSetting(icon: Icons.mail, opacity: 0.4),
          ButtomSetting(icon: Icons.person, opacity: 0.4),
        ],
      ),
    );
  }

  SizedBox ButtomSetting({double? size, double? opacity, IconData? icon}) {
    return SizedBox(
      height: size ?? 35,
      width: size ?? 35,
      child: FittedBox(
        child: Opacity(
          opacity: opacity ?? 1,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            foregroundColor: Colors.indigo,
            mini: true,
            onPressed: onPressed(context),
            child: Icon(
              icon,
              size: 26,
            ),
          ),
        ),
      ),
    );
  }
}
