import 'package:flutter/material.dart';
class FoodCategories extends StatelessWidget {
  const FoodCategories(
      {super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image(
              image: NetworkImage(image),
              width: 158,
              height: 144,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14.61,
            ),
          ),
        ],
      ),
    );
  }
}