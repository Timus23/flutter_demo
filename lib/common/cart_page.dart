import 'package:flutter/material.dart';
import 'package:simpleapplication/common/widgets/cards/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CartCard(
            imageUrl:
                "https://www.corning.com/microsites/csm/gorillaglass/Samsung/CGG_Samsun_galaxys21_phantom.jpg",
            title: "Samsung S21+",
            markedPrice: "100000",
            sellingPrice: "90000",
            quantity: 1,
            offPercentage: 10,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
