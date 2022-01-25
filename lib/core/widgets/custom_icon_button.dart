import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  Icon icon;
  Color color;
  CustomIconButton({Key? key, required this.icon, this.color = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
      color: color,
    );
  }
}
