import 'package:flutter/material.dart';
import 'package:pizza_order_app/Models/category_card.dart';
import 'package:pizza_order_app/Models/pizza_card.dart';
import 'package:pizza_order_app/Widgets/bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 37),
      body: SafeArea(
        // Top Row

        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 22.0),
              child: Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 33, 41, 64),
                    child: IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                  SizedBox(width: 165),
                  Text(
                    'Hello, User!',
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 10),
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

            const SizedBox(height: 10),

            // Main card

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 33, 41, 64),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 80,
                        child: Image.asset(
                          'lib/images/pizza.jpg',
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/images/pizza.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Juicy And \nSavory Steak',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Lorem ipsum dolor',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            // const SizedBox(height: 14),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'only',
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '15.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 47,
                                  ),
                                ),
                                Text(
                                  '99',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),

            const SizedBox(height: 15),

            // text

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Meal Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // side srcoll

            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(categoryName: 'Breakfast'),
                  CategoryCard(categoryName: 'Lunch'),
                  CategoryCard(categoryName: 'Dinner')
                ],
              ),
            ),

            const SizedBox(height: 20),

            // text

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // bottom cards

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PizzaCard(
                    pizzaImage: 'lib/images/pizza.jpg',
                    pizzaName: 'Lorem ipsum dolor slt amet',
                    pizzaText: 'Lorem ipsum'),
                PizzaCard(
                    pizzaImage: 'lib/images/pizza.jpg',
                    pizzaName: 'Lorem ipsum dolor slt amet',
                    pizzaText: 'Lorem ipsum'),
              ],
            ))
          ],
        ),
      ),
      // bottomNavigationBar: BottomNav(),
    );
  }
}
