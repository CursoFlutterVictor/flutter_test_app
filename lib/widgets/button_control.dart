import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final String? heroTag;
  const ButtonControl({
    Key? key,
    this.heroTag,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      heroTag: heroTag,
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
