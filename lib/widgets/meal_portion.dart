import 'package:flutter/material.dart';

class MealPortion extends StatelessWidget {
  final String? category;
  final String? name;

  MealPortion({this.category, this.name, Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final Color color;

    switch (category) {
      case "Vegetales":
        color = Colors.green.shade400;
        break;
      case "Carbohidrato":
        color = Colors.orange.shade400;
        break;
      case "Proteina":
        color = Colors.red.shade400;
        break;
      default:
        color = Colors.blue.shade400;
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Column(
        children: [
          Text('$category',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20)),
          Text('$name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}
