import 'package:flutter/material.dart';
import 'package:simpleapplication/common/widgets/cards/cart_card.dart';
import 'package:simpleapplication/features/carts/models/cart.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final List<Cart> _items = [
    Cart.dummy(),
    Cart.dummy(),
    Cart.dummy(),
    Cart.dummy(),
    Cart.dummy(),
    Cart.dummy(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CartCard(
            imageUrl: _items[index].imageUrl,
            title: _items[index].title,
            markedPrice: _items[index].markedPrice,
            sellingPrice: _items[index].sellingPrice,
            quantity: _items[index].quantity,
            offPercentage: _items[index].percentOff,
          );
        },
        itemCount: _items.length,
      ),
    );
  }
}
