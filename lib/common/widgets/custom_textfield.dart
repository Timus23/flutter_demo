import 'package:flutter/material.dart';
import 'package:simpleapplication/app/custom_theme.dart';

class CustomTextInputField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final String hintText;
  final bool showText;

  const CustomTextInputField({
    Key? key,
    required this.hintText,
    required this.label,
    this.prefixIcon,
    this.showText = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(
        horizontal: CustomTheme.symmetricHosPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            obscureText: showText ? false : true,
            decoration: InputDecoration(
              hintText: hintText,
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: CustomTheme.lightGrey.withOpacity(0.4),
                ),
              ),
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      color: CustomTheme.lightGrey.withOpacity(0.4),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
