import 'package:flutter/material.dart';
import 'package:pizza_order_app/UI pages/home.dart';
import 'package:pizza_order_app/UI pages/cart.dart';
import 'package:pizza_order_app/UI pages/menu.dart';
import 'package:pizza_order_app/UI pages/likes.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPage(),
    MenuPage(),
    LikesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Color.fromARGB(255, 17, 20, 37),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                size: 30,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 197, 197, 197),
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          /*iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 13.0,
          unselectedFontSize: 13.0,*/
        ),
      ),
    );
  }
}
