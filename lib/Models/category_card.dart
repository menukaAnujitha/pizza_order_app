import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 33, 41, 64),
        ),
        child: Row(
          children: [
            Text(categoryName,
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
