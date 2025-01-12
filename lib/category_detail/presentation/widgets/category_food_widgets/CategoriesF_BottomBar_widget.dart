import 'package:flutter/material.dart';
import 'package:mvvm_117/utils/AppColors.dart';

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  Size get preferredSize => Size(double.infinity, 39);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextItem(text: "Breakfast"),
          TextItem(text: "Lunch"),
          TextItem(text: "Dinner"),
          TextItem(text: "Vegan"),
        ],
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  const TextItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.redPinkmain,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
