import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final String pizzaImage;
  final String pizzaName;
  final String pizzaText;

  PizzaCard(
      {required this.pizzaImage,
      required this.pizzaName,
      required this.pizzaText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        width: 150.0,
        height: 250.0,
        color: Color.fromARGB(255, 33, 41, 64),
        child: Column(
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.8,
                child: Image.asset(
                  pizzaImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                pizzaName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            Text(pizzaText,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: Colors.white)),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromRGBO(255, 180, 30, 1),
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromRGBO(255, 180, 30, 1),
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromRGBO(255, 180, 30, 1),
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromRGBO(255, 180, 30, 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
