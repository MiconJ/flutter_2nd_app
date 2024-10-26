import 'package:flutter/material.dart';
import 'package:flutter_app_2nd/dummy_data/dummy_data.dart';
import 'package:flutter_app_2nd/models/category.dart';
import 'package:flutter_app_2nd/screens/meals.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.categoryItem, required this.onSelecteCategory});
  final Category categoryItem;
  final void Function() onSelecteCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelecteCategory,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [
              categoryItem.color.withOpacity(0.55),
              categoryItem.color.withOpacity(0.9),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categoryItem.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
