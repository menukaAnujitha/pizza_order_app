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
          // top row

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

          // pizza image

          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'lib/images/pizza2.jpg',
                width: 300,
                height: 300,
              ),
            ),
          ),

          // title and price

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lorem ipsum\nDolor slt amet',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),

                      const Text(
                        'Lorem ipsum dolor slt',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                      // const SizedBox(height: 14),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromRGBO(255, 180, 30, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromRGBO(255, 180, 30, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromRGBO(255, 180, 30, 1),
                          ),
                          Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromRGBO(255, 180, 30, 1),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 15),
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\$',
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '12.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 47,
                            ),
                          ),
                          Text(
                            '59',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )),
                ]),
          ),

          SizedBox(
            height: 20,
          ),
          // Description

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ])));
  }
}
