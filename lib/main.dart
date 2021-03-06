import 'package:flutter/material.dart';
import 'package:simpleapplication/features/carts/widgets/cart_page.dart';
import 'package:simpleapplication/homepage.dart';
import 'package:simpleapplication/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartPage(),
    );
  }
}
