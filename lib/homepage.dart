import 'package:flutter/material.dart';
import 'package:simpleapplication/app/custom_theme.dart';
import 'package:simpleapplication/common/constants/image.dart';
import 'package:simpleapplication/common/widgets/custom_icon_button.dart';
import 'package:simpleapplication/common/widgets/custom_button.dart';
import 'package:simpleapplication/common/widgets/custom_textfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (_, __) {
            return Divider();
          },
          itemBuilder: (context, index) {
            return Text("data");
          },
          itemCount: 100,
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     CustomRoundedButton(
        //       title: "Login",
        //     ),
        //     CustomIconButton(
        //       icon: Icons.zoom_out_rounded,
        //       backgroundColor: CustomTheme.primaryColor,
        //     ),
        //     CustomTextInputField(
        //       hintText: "Enter Email",
        //       label: "Email",
        //       prefixIcon: Icons.person,
        //     ),
        //     Image.asset(
        //       ImageAssets.congratulations,
        //       height: 200,
        //       width: 200,
        //       fit: BoxFit.fill,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
