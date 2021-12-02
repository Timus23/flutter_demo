import 'package:flutter/material.dart';
import 'package:simpleapplication/app/custom_theme.dart';
import 'package:simpleapplication/common/constants/image.dart';
import 'package:simpleapplication/common/widgets/cards/cart_card.dart';
import 'package:simpleapplication/common/widgets/custom_chip_tile.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundedButton(
              title: "Login",
            ),
            CustomIconButton(
              icon: Icons.zoom_out_rounded,
              backgroundColor: CustomTheme.primaryColor,
            ),
            CustomTextInputField(
              hintText: "Enter Email",
              label: "Email",
              prefixIcon: Icons.person,
            ),
            CartCard(
              imageUrl:
                  "https://www.corning.com/microsites/csm/gorillaglass/Samsung/CGG_Samsun_galaxys21_phantom.jpg",
              title: "Samsung S21+",
              markedPrice: "100000",
              sellingPrice: "90000",
              quantity: 1,
              offPercentage: 10,
            )
          ],
        ),
      ),
    );
  }
}
