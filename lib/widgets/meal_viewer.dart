import 'package:flutter/material.dart';
import 'package:what_to_eat/widgets/meal_portion.dart';

class MealViewer extends StatelessWidget {

  final List<MealPortion> meals;

  MealViewer({required this.meals, Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...meals
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

}