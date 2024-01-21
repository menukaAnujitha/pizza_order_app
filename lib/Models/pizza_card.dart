import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final String pizzaImage;
  final String pizzaName;
  final String pizzaText;
  final String itemPrice;
  void Function()? onPressed;

  PizzaCard({
    required this.pizzaImage,
    required this.pizzaName,
    required this.pizzaText,
    required this.itemPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 33, 41, 64),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  pizzaName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  pizzaText,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 170, 170, 170)),
                ),
              ),
            ),
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
                SizedBox(width: 10),
                MaterialButton(
                  onPressed: onPressed,
                  height: 15,
                  minWidth: 5,
                  color: Color.fromARGB(255, 255, 24, 178),
                  child: Text(
                    '\$' + itemPrice,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
