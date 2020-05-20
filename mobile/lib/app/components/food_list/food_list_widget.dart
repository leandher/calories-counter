import 'package:flutter/material.dart';
import 'package:mobile/models/food_model.dart';

class FoodListWidget extends StatelessWidget {
  final List<FoodModel> foods;
  final ScrollController controller;

  FoodListWidget({Key key, this.foods, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return foods.isEmpty
        ? Container(
            alignment: Alignment.topCenter,
            child: Text(
              'No foods found!',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.builder(
            itemCount: foods.length,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              var food = foods[index];
              var calories = double.parse(food.calories).toInt();
              var portionAmount = double.parse(food.portionAmount).toInt();
              var portionDisplayName = food.portionDisplayName;

              return Card(
                child: ListTile(
                  title: Text(food.displayName),
                  subtitle: Text(
                      '$calories calories | Serving size: $portionAmount $portionDisplayName'),
                ),
                borderOnForeground: true,
              );
            },
          );
  }
}
