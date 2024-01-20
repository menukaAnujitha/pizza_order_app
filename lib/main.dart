import 'package:flutter/material.dart';
import 'package:pizza_order_app/UI%20pages/cart.dart';
import 'package:pizza_order_app/UI%20pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Order App',
      debugShowCheckedModeBanner: false,
      home: CartPage(),
    );
  }
}
