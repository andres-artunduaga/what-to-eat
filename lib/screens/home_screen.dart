import 'package:flutter/material.dart';
import 'package:what_to_eat/services/meal_service.dart';
import 'package:what_to_eat/widgets/meal_portion.dart';

import 'package:what_to_eat/widgets/meal_viewer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MealPortion> meals = [];

  _generateMeal() {
    setState(() {
      meals = [
        MealService.getRandomVegetable(),
        MealService.getRandomProtein(),
        MealService.getRandomCarb()
      ];
    });
  }

  _buildBody() {
    Orientation orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 280,
                padding: EdgeInsets.all(10.0),
                child: Image(image: AssetImage("assets/balanced.png"))),
            MealViewer(meals: meals),
            ElevatedButton(
                onPressed: () {
                  _generateMeal();
                },
                child: Text("Generar menú"))
          ],
        ),
      );
    } else {
      return Center(
        child: Row(
          children: [
            Container(
                height: 280,
                padding: EdgeInsets.all(10.0),
                child: Image(image: AssetImage("assets/balanced.png"))),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MealViewer(meals: meals),
                  ElevatedButton(
                      onPressed: () {
                        _generateMeal();
                      },
                      child: Text("Generar menú"))
                ],
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Que comeré hoy 🍽"),
        ),
        body: _buildBody());
  }
}
