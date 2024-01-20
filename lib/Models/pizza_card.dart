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
        padding: const EdgeInsets.all(15),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 33, 41, 64),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          Container(
            child: Image.asset(
              pizzaImage,
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            pizzaName,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
          ),
          Text(pizzaText,
              style: TextStyle(
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
        ]),
      ),
    );
  }
}
