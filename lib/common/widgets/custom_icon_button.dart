import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color iconColor;
  final Function()? onPressed;

  const CustomIconButton({
    Key? key,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
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
        padding: const EdgeInsets.all(12),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
