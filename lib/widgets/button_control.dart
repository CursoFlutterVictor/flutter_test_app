import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  const ButtonControl({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
