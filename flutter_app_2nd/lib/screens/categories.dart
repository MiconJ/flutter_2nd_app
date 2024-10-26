import 'package:flutter/material.dart';
import 'package:flutter_app_2nd/dummy_data/dummy_data.dart';
import 'package:flutter_app_2nd/models/category.dart';
import 'package:flutter_app_2nd/screens/meals.dart';
import 'package:flutter_app_2nd/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  final String screenTitle;
  const CategoriesScreen({super.key, required this.screenTitle});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) =>
                MealsScreen(title: category.title, meals: filteredMeals)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(screenTitle),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: availableCategories.length,
          itemBuilder: (context, index) {
            return CategoryGridItem(
              categoryItem: availableCategories[index],
              onSelecteCategory: () {
                _selectCategory(context, availableCategories[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
