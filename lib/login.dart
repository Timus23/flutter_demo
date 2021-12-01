import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:simpleapplication/app/custom_theme.dart';
import 'package:simpleapplication/common/widgets/custom_button.dart';
import 'package:simpleapplication/common/widgets/custom_icon_button.dart';
import 'package:simpleapplication/common/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                CustomTextInputField(
                  hintText: "Type Your Email",
                  label: "Email",
                  prefixIcon: Icons.person,
                ),
                CustomTextInputField(
                  hintText: "Type Your Password",
                  label: "Password",
                  showText: false,
                  prefixIcon: Icons.lock,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(
                    right: CustomTheme.symmetricHosPadding,
                    bottom: 30,
                  ),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: CustomTheme.lightGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: CustomTheme.symmetricHosPadding,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomRoundedButton(
                          title: "LOGIN",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Or Signup using",
                    style: TextStyle(
                      color: CustomTheme.lightGrey,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      icon: Zocial.facebook,
                      backgroundColor: CustomTheme.facebookColor,
                    ),
                    SizedBox(width: 10),
                    CustomIconButton(
                      icon: Zocial.twitter,
                      backgroundColor: CustomTheme.twitter,
                    ),
                    SizedBox(width: 10),
                    CustomIconButton(
                      icon: Zocial.google,
                      backgroundColor: CustomTheme.googleColor,
                    ),
                  ],
                ),
                SizedBox(height: 120),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      color: CustomTheme.lightGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
