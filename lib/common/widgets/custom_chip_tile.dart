import 'package:flutter/material.dart';
import 'package:simpleapplication/app/custom_theme.dart';

class CustomChipTile extends StatelessWidget {
  final String title;
  const CustomChipTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: CustomTheme.primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: CustomTheme.primaryColor,
        ),
      ),
    );
  }
}
