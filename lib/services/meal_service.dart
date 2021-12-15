import 'dart:math';

import 'package:what_to_eat/widgets/meal_portion.dart';

class MealService {
  static MealPortion getRandomCarb() {
    final List<MealPortion> carbList = [
      MealPortion(category: "Carbohidrato", name: "Arroz integral"),
      MealPortion(category: "Carbohidrato", name: "Papas fritas"),
      MealPortion(category: "Carbohidrato", name: "Yucas fritas"),
      MealPortion(category: "Carbohidrato", name: "Papas cocidas"),
      MealPortion(category: "Carbohidrato", name: "Brocoli con champiñones"),
    ];
    final _random = Random();
    return carbList[_random.nextInt(carbList.length)];
  }

  static MealPortion getRandomVegetable() {
    final List<MealPortion> vegetableList = [
      MealPortion(category: "Vegetales", name: "Ensalada de tomate y cebolla"),
      MealPortion(
          category: "Vegetales",
          name: "Ensalada de tomate, cebolla y aguacate"),
      MealPortion(
          category: "Vegetales", name: "Ensalada de tomate, cebolla, pepino"),
      MealPortion(
          category: "Vegetales",
          name: "Ensalada de tomate, cebolla, pepino y zanahoria"),
    ];
    final _random = Random();
    return vegetableList[_random.nextInt(vegetableList.length)];
  }

  static MealPortion getRandomProtein() {
    final List<MealPortion> proteinList = [
      MealPortion(category: "Proteina", name: "Goulash"),
      MealPortion(category: "Proteina", name: "Pollo a la plancha"),
      MealPortion(category: "Proteina", name: "Pollo sudado"),
      MealPortion(category: "Proteina", name: "Carne asada"),
      MealPortion(category: "Proteina", name: "Trucha a la plancha"),
      MealPortion(category: "Proteina", name: "Tilapia asada"),
    ];
    final _random = Random();
    return proteinList[_random.nextInt(proteinList.length)];
  }
}
