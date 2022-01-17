import 'package:flutter/material.dart';

class FloatingFavActionButton extends StatefulWidget {
  const FloatingFavActionButton({Key? key, this.size = 24}) : super(key: key);
  final double size;
  @override
  _FloatingFavActionButtonState createState() =>
      _FloatingFavActionButtonState();
}

class _FloatingFavActionButtonState extends State<FloatingFavActionButton> {
  bool _pressed = false;

  void onPressedFav() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: _pressed
            ? const Text("Se quito de favoritos.")
            : const Text("Se agrego a favoritos.")));
    setState(() {
      _pressed = !_pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      child: Icon(
        _pressed ? Icons.favorite : Icons.favorite_border,
        size: widget.size,
      ),
    );
  }
}
