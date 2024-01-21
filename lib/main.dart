import 'package:flutter/material.dart';
import 'package:pizza_order_app/Models/cart_model.dart';
import 'package:pizza_order_app/UI%20pages/home.dart';
import 'package:provider/provider.dart';
import 'package:pizza_order_app/Widgets/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNav(),
      ),
    );
  }
}
