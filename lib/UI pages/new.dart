import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pizza_order_app/Models/pizza_card.dart';

class NewPage extends StatefulWidget {
  const NewPage({
    super.key,
  });

  @override
  State<NewPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<NewPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Blur Animation'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Your image goes here
            Image.network(
              'https://unsplash.com/photos/pepperoni-pizza-OklpRh8-Sns',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: _animation.value, sigmaY: _animation.value),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
