import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const CustomRoundedButton({
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
        gradient: LinearGradient(
          colors: [
            Color(0x55090979),
            Color(0x5500d4ff),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 80,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
