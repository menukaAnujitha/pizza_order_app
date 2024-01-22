import 'dart:ui';
import 'package:shadow_overlay/shadow_overlay.dart';
import 'package:flutter/material.dart';
import 'package:pizza_order_app/Models/cart_model.dart';
import 'package:pizza_order_app/Models/pizza_card.dart';
import 'package:provider/provider.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({Key? key}) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 37),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              // alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ShadowOverlay(
                    child: AspectRatio(
                      aspectRatio: 16 / 8,
                      child: Image.asset(
                        'lib/images/pizza.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    shadowColor: Color.fromARGB(255, 17, 20, 37),
                    shadowWidth: 800,
                    shadowHeight: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Color.fromARGB(255, 33, 41, 64),
                        child: IconButton(
                          iconSize: 30,
                          color: Colors.white,
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 225),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'lib/images/profile.jpg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 110.0,
                  child: Text(
                    '   Lorem Ipsum \n  Dolor Sit Amet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: value.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return PizzaCard(
                        pizzaImage: value.shopItems[index][0],
                        pizzaName: value.shopItems[index][1],
                        pizzaText: value.shopItems[index][2],
                        itemPrice: value.shopItems[index][3],
                        onPressed: () =>
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
