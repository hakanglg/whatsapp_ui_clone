import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  Icon icon;
  Color color;
  double size;
  CustomIconButton(
      {Key? key,
      required this.icon,
      this.color = Colors.grey,
      this.size = 25.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {}, icon: icon, color: color, iconSize: size);
  }
}
