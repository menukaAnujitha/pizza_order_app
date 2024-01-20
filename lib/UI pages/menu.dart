import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 20, 37),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      onPressed: () {}),
                ),
                SizedBox(width: 190),
                Container(
                  child: IconButton(
                      iconSize: 30,
                      color: Colors.white,
                      icon: const Icon(
                        Icons.star_outline_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ),
                SizedBox(width: 15),
                Container(
                  child: IconButton(
                      iconSize: 30,
                      color: Colors.white,
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ])));
  }
}
