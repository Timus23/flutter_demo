import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color iconColor;
  final Function()? onPressed;
  final double iconSize;
  final double padding;

  const CustomIconButton({
    Key? key,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
    this.iconSize = 22,
    this.padding = 12,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(padding),
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
